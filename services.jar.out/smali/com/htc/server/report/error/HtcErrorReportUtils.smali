.class public Lcom/htc/server/report/error/HtcErrorReportUtils;
.super Ljava/lang/Object;
.source "HtcErrorReportUtils.java"


# static fields
.field private static final IS_SHIPPING_ROM:Z

.field private static final TAG:Ljava/lang/String; = "HtcErrorReport"

.field private static final htcDebugFlag:Z

.field private static mHtcSignature:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private static sInit:Z

.field private static sIsAutoSend:Ljava/lang/reflect/Method;

.field private static volatile sIsInit:Z

.field private static sSenseVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/report/error/HtcErrorReportUtils;->htcDebugFlag:Z

    .line 30
    invoke-static {}, Lcom/htc/server/report/error/ReportConfig;->isShippingRom()Z

    move-result v0

    sput-boolean v0, Lcom/htc/server/report/error/HtcErrorReportUtils;->IS_SHIPPING_ROM:Z

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHtcClassByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v6

    .line 79
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 80
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-eqz v5, :cond_0

    .line 83
    const/16 v7, 0x40

    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 84
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 87
    invoke-static {v5, v4}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isSignedHtcKey(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 88
    sget-boolean v7, Lcom/htc/server/report/error/HtcErrorReportUtils;->htcDebugFlag:Z

    if-eqz v7, :cond_0

    .line 89
    const-string v7, "HtcErrorReport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stop reflection. The package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not signed HTC key"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 98
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "HtcErrorReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package name not found - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    move-object v6, v0

    .line 105
    goto :goto_0

    .line 93
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v6, 0x3

    :try_start_1
    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 95
    .local v3, "newContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 96
    .local v2, "loader":Ljava/lang/ClassLoader;
    const/4 v6, 0x1

    invoke-static {p2, v6, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_1

    .line 100
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "newContext":Landroid/content/Context;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "HtcErrorReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "class name not found - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "HtcErrorReport"

    const-string v7, "other exception - "

    invoke-static {v6, v7, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static hasHtcSignature(ILjava/lang/String;)Z
    .locals 7
    .param p0, "processUserId"    # I
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 179
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-nez v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v3

    .line 181
    :cond_1
    const/4 v1, 0x0

    .line 183
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v4, 0x40

    :try_start_0
    invoke-interface {v2, p1, v4, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 189
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->hasHtcSignature:Z

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HtcErrorReport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in hasHtcSignature, can\'t find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static declared-synchronized init(Landroid/content/Context;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v3, Lcom/htc/server/report/error/HtcErrorReportUtils;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 37
    :try_start_1
    const-string v2, "com.htc.feedback"

    const-string v4, "com.htc.feedback.framework.ErrorReport"

    invoke-static {p0, v2, v4}, Lcom/htc/server/report/error/HtcErrorReportUtils;->getHtcClassByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 39
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 50
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 42
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_2
    sget-object v2, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsAutoSend:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 43
    const-string v2, "isAutoSend"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsAutoSend:Ljava/lang/reflect/Method;

    .line 45
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsInit:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 46
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "HtcErrorReport"

    const-string v4, "Stop reflection by exception "

    invoke-static {v2, v4, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 35
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized initHtcSignature(Landroid/content/pm/PackageManager;)V
    .locals 12
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 110
    const-class v8, Lcom/htc/server/report/error/HtcErrorReportUtils;

    monitor-enter v8

    const/4 v7, 0x7

    :try_start_0
    new-array v0, v7, [[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "platform"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "android"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "shared"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.android.providers.contacts"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "media"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.android.providers.media"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "testkey"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.htc.provider.CustomizationSettings"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "testkey"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.android.providers.calendar"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "hms"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.htc.sense.hsp"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "hms"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.htc.launcher"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    .line 120
    .local v0, "SIGNATURE_APP_NAME_PAIR":[[Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/htc/server/report/error/HtcErrorReportUtils;->mHtcSignature:Ljava/util/HashMap;

    .line 122
    move-object v1, v0

    .local v1, "arr$":[[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v1, v3

    .line 126
    .local v6, "predefinedPair":[Ljava/lang/String;
    sget-object v7, Lcom/htc/server/report/error/HtcErrorReportUtils;->mHtcSignature:Ljava/util/HashMap;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    sget-boolean v7, Lcom/htc/server/report/error/HtcErrorReportUtils;->htcDebugFlag:Z

    if-eqz v7, :cond_0

    .line 128
    const-string v7, "HtcErrorReport"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[initHtcSignature] Not add "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " because short key name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has been added before"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v5, 0x0

    .line 134
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v6, v7

    const/16 v9, 0x40

    invoke-virtual {p0, v7, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 139
    :goto_2
    if-eqz v5, :cond_2

    :try_start_2
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_2

    .line 140
    sget-object v7, Lcom/htc/server/report/error/HtcErrorReportUtils;->mHtcSignature:Ljava/util/HashMap;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 110
    .end local v0    # "SIGNATURE_APP_NAME_PAIR":[[Ljava/lang/String;
    .end local v1    # "arr$":[[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "predefinedPair":[Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 135
    .restart local v0    # "SIGNATURE_APP_NAME_PAIR":[[Ljava/lang/String;
    .restart local v1    # "arr$":[[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v6    # "predefinedPair":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v7, "HtcErrorReport"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[initHtcSignature] can\'t find package info of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 142
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v7, "HtcErrorReport"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[initHtcSignature] Signature of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 144
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "predefinedPair":[Ljava/lang/String;
    :cond_3
    monitor-exit v8

    return-void
.end method

.method public static isAutoSend(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "processUserId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_error_report_auto_send"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 56
    .local v0, "autoSend":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/server/report/error/ReportConfig;->isShippingRom()Z

    move-result v3

    if-nez v3, :cond_1

    .line 58
    const-string v3, "0"

    const-string v4, "ro.secure"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 59
    .local v1, "isRooted":Z
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isDashboardBuild()Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    sget-boolean v3, Lcom/htc/server/report/error/HtcErrorReportUtils;->htcDebugFlag:Z

    if-eqz v3, :cond_0

    .line 61
    const-string v3, "HtcErrorReport"

    const-string v4, "Disable auto send by rooted RCMS ROM"

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v2

    .line 66
    .end local v0    # "autoSend":Z
    .end local v1    # "isRooted":Z
    :cond_1
    return v0

    :cond_2
    move v0, v2

    .line 54
    goto :goto_0
.end method

.method public static isDashboardBuild()Z
    .locals 2

    .prologue
    .line 70
    const-string v0, "ro.build.description"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.1.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSenseFeatureROM()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 199
    sget-boolean v5, Lcom/htc/server/report/error/HtcErrorReportUtils;->sInit:Z

    if-nez v5, :cond_2

    .line 200
    const-class v5, Lcom/htc/server/report/error/HtcErrorReportUtils;

    monitor-enter v5

    .line 201
    :try_start_0
    sget-boolean v6, Lcom/htc/server/report/error/HtcErrorReportUtils;->sInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 203
    :try_start_1
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    .line 204
    .local v1, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v1, :cond_0

    .line 205
    const-string v6, "system"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 206
    .local v2, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v2, :cond_0

    .line 207
    const-string v6, "sense_version"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/htc/server/report/error/HtcErrorReportUtils;->sSenseVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .end local v2    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :try_start_2
    sput-boolean v6, Lcom/htc/server/report/error/HtcErrorReportUtils;->sInit:Z

    .line 215
    :cond_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :cond_2
    sget-object v5, Lcom/htc/server/report/error/HtcErrorReportUtils;->sSenseVersion:Ljava/lang/String;

    if-eqz v5, :cond_3

    :goto_1
    return v3

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "HtcErrorReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "version parse error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sense: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/server/report/error/HtcErrorReportUtils;->sSenseVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_3
    move v3, v4

    .line 217
    goto :goto_1
.end method

.method public static isSignedHtcKey(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 9
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v5, 0x0

    .line 147
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v5

    .line 150
    :cond_1
    sget-object v6, Lcom/htc/server/report/error/HtcErrorReportUtils;->mHtcSignature:Ljava/util/HashMap;

    if-nez v6, :cond_2

    .line 151
    invoke-static {p0}, Lcom/htc/server/report/error/HtcErrorReportUtils;->initHtcSignature(Landroid/content/pm/PackageManager;)V

    .line 153
    :cond_2
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v6, :cond_3

    .line 154
    const-string v6, "HtcErrorReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pi.signatures is null, pi.packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_3
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v6, v5

    .line 159
    .local v4, "targetAppSignature":Landroid/content/pm/Signature;
    if-nez v4, :cond_4

    .line 160
    const-string v6, "HtcErrorReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "targetAppSignature is null, pi.packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_4
    sget-object v6, Lcom/htc/server/report/error/HtcErrorReportUtils;->mHtcSignature:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 165
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/Signature;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/Signature;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    .line 167
    .local v3, "predefinedSignature":Landroid/content/pm/Signature;
    invoke-virtual {v4, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 168
    sget-boolean v5, Lcom/htc/server/report/error/HtcErrorReportUtils;->htcDebugFlag:Z

    if-eqz v5, :cond_6

    .line 169
    const-string v6, "HtcErrorReport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is signed HTC key: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_0
.end method
