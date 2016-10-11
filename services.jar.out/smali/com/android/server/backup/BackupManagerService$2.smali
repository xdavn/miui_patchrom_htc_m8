.class Lcom/android/server/backup/BackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .prologue
    .line 1979
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1981
    sget-boolean v30, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v30, :cond_0

    const-string v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Received broadcast "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1984
    .local v4, "action":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1985
    .local v24, "replacing":Z
    const/4 v5, 0x0

    .line 1986
    .local v5, "added":Z
    const/4 v8, 0x0

    .line 1987
    .local v8, "changed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 1988
    .local v13, "extras":Landroid/os/Bundle;
    const/16 v22, 0x0

    .line 1989
    .local v22, "pkgList":[Ljava/lang/String;
    const-string v30, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1

    const-string v30, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1

    const-string v30, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 1992
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v29

    .line 1993
    .local v29, "uri":Landroid/net/Uri;
    if-nez v29, :cond_3

    .line 2144
    .end local v29    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 1996
    .restart local v29    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v23

    .line 1997
    .local v23, "pkgName":Ljava/lang/String;
    if-eqz v23, :cond_4

    .line 1998
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .end local v22    # "pkgList":[Ljava/lang/String;
    const/16 v30, 0x0

    aput-object v23, v22, v30

    .line 2000
    .restart local v22    # "pkgList":[Ljava/lang/String;
    :cond_4
    const-string v30, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 2003
    if-eqz v8, :cond_b

    .line 2005
    :try_start_0
    const-string v30, "android.intent.extra.changed_component_name_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2008
    .local v10, "components":[Ljava/lang/String;
    sget-boolean v30, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v30, :cond_5

    .line 2009
    const-string v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Package "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " changed; rechecking"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    array-length v0, v10

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_5

    .line 2011
    const-string v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "   * "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget-object v32, v10, v15

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2024
    .end local v15    # "i":I
    :cond_5
    const/16 v27, 0x1

    .line 2025
    .local v27, "tryBind":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 2027
    .local v11, "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v11, :cond_8

    .line 2029
    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    .line 2030
    .local v25, "svc":Landroid/content/pm/ServiceInfo;
    new-instance v26, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    .local v26, "svcName":Landroid/content/ComponentName;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 2033
    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 2034
    .local v9, "className":Ljava/lang/String;
    sget-boolean v30, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v30, :cond_6

    .line 2035
    const-string v30, "BackupManagerService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Checking need to rebind "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    :cond_6
    const/16 v17, 0x0

    .line 2039
    .local v17, "isTransport":Z
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    array-length v0, v10

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_7

    .line 2040
    aget-object v30, v10, v15

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 2042
    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    .line 2043
    .local v14, "flatName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    const/16 v17, 0x1

    .line 2051
    .end local v14    # "flatName":Ljava/lang/String;
    :cond_7
    if-nez v17, :cond_8

    .line 2054
    const/16 v27, 0x0

    .line 2058
    .end local v9    # "className":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v17    # "isTransport":Z
    .end local v25    # "svc":Landroid/content/pm/ServiceInfo;
    .end local v26    # "svcName":Landroid/content/ComponentName;
    :cond_8
    monitor-exit v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2060
    if-eqz v27, :cond_2

    .line 2061
    :try_start_2
    sget-boolean v30, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v30, :cond_9

    .line 2062
    const-string v30, "BackupManagerService"

    const-string v31, "Yes, need to recheck binding"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2065
    .local v6, "app":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2067
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v10    # "components":[Ljava/lang/String;
    .end local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .end local v27    # "tryBind":Z
    :catch_0
    move-exception v12

    .line 2069
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v30, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v30, :cond_2

    .line 2070
    const-string v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Can\'t find changed package "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2039
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "className":Ljava/lang/String;
    .restart local v10    # "components":[Ljava/lang/String;
    .restart local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .restart local v15    # "i":I
    .restart local v17    # "isTransport":Z
    .restart local v25    # "svc":Landroid/content/pm/ServiceInfo;
    .restart local v26    # "svcName":Landroid/content/ComponentName;
    .restart local v27    # "tryBind":Z
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 2058
    .end local v9    # "className":Ljava/lang/String;
    .end local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .end local v15    # "i":I
    .end local v17    # "isTransport":Z
    .end local v25    # "svc":Landroid/content/pm/ServiceInfo;
    .end local v26    # "svcName":Landroid/content/ComponentName;
    :catchall_0
    move-exception v30

    :try_start_3
    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v30
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2076
    .end local v10    # "components":[Ljava/lang/String;
    .end local v27    # "tryBind":Z
    :cond_b
    const-string v30, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2077
    const-string v30, "android.intent.extra.REPLACING"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 2086
    .end local v23    # "pkgName":Ljava/lang/String;
    .end local v29    # "uri":Landroid/net/Uri;
    :cond_c
    :goto_3
    if-eqz v22, :cond_2

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    if-eqz v30, :cond_2

    .line 2090
    const-string v30, "android.intent.extra.UID"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 2091
    .local v28, "uid":I
    if-eqz v5, :cond_14

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 2093
    if-eqz v24, :cond_d

    .line 2096
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    .line 2098
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 2099
    monitor-exit v31
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 2102
    .local v20, "now":J
    move-object/from16 v7, v22

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    aget-object v19, v7, v16

    .line 2104
    .local v19, "packageName":Ljava/lang/String;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2105
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v30

    if-eqz v30, :cond_e

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    const-wide/16 v32, 0x0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 2112
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2113
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 2114
    .restart local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v11, :cond_12

    .line 2115
    sget-boolean v30, Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z

    if-eqz v30, :cond_f

    .line 2116
    const-string v30, "BackupManagerService"

    const-string v32, "Transport package changed; rebinding"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    iget-object v0, v11, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->bindTransport(Landroid/content/pm/ServiceInfo;)Z

    .line 2122
    :goto_5
    monitor-exit v31
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2102
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 2078
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "now":J
    .end local v28    # "uid":I
    :cond_10
    const-string v30, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 2079
    const/4 v5, 0x1

    .line 2080
    const-string v30, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_3

    .line 2081
    :cond_11
    const-string v30, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 2082
    const/4 v5, 0x0

    .line 2083
    const-string v30, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_3

    .line 2099
    .restart local v28    # "uid":I
    :catchall_1
    move-exception v30

    :try_start_8
    monitor-exit v31
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v30

    .line 2120
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .restart local v16    # "i$":I
    .restart local v18    # "len$":I
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v20    # "now":J
    :cond_12
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V

    goto :goto_5

    .line 2122
    .end local v11    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_2
    move-exception v30

    monitor-exit v31
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v30
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1

    .line 2124
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v12

    .line 2127
    .restart local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Can\'t resolve new app "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2134
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "packageName":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    const-string v31, "@pm@"

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static/range {v30 .. v31}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2136
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v20    # "now":J
    :cond_14
    if-nez v24, :cond_2

    .line 2139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 2140
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    .line 2141
    monitor-exit v31

    goto/16 :goto_0

    :catchall_3
    move-exception v30

    monitor-exit v31
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v30
.end method
