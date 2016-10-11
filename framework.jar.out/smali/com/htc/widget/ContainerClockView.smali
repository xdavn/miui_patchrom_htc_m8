.class public Lcom/htc/widget/ContainerClockView;
.super Landroid/widget/RelativeLayout;
.source "ContainerClockView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/ContainerClockView$PathClassInfo;
    }
.end annotation


# static fields
.field private static final APP_HSP_PERMISSION:Ljava/lang/String; = "com.htc.sense.permission.APP_HSP"

.field private static final DEBUG_FLAG:Z

.field private static final TAG:Ljava/lang/String; = "com.htc.widget.ContainerClockView"

.field private static sPathClassInfo:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/widget/ContainerClockView$PathClassInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mInit:Ljava/lang/reflect/Method;

.field private mLayoutParams:I

.field private mPackageName:Ljava/lang/String;

.field private mSetDateFormat:Ljava/lang/reflect/Method;

.field private mSetTimeZone:Ljava/lang/reflect/Method;

.field private mView:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/widget/ContainerClockView;->DEBUG_FLAG:Z

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/htc/widget/ContainerClockView;->sPathClassInfo:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/ContainerClockView;->mLayoutParams:I

    .line 42
    invoke-direct {p0}, Lcom/htc/widget/ContainerClockView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/ContainerClockView;->mLayoutParams:I

    .line 48
    invoke-direct {p0}, Lcom/htc/widget/ContainerClockView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/ContainerClockView;->mLayoutParams:I

    .line 53
    invoke-direct {p0}, Lcom/htc/widget/ContainerClockView;->init()V

    .line 54
    return-void
.end method

.method private init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/widget/ContainerClockView;->requestTagInfo()V

    .line 58
    invoke-direct {p0}, Lcom/htc/widget/ContainerClockView;->requestContainer()V

    .line 59
    return-void
.end method

.method private requestContainer()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/htc/widget/ContainerClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 78
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 79
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v7, "com.htc.sense.permission.APP_HSP"

    iget-object v8, p0, Lcom/htc/widget/ContainerClockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 80
    sget-boolean v7, Lcom/htc/widget/ContainerClockView;->DEBUG_FLAG:Z

    if-eqz v7, :cond_0

    const-string v7, "com.htc.widget.ContainerClockView"

    const-string v8, "requestContainer fail, no permission"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/ContainerClockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 84
    .local v0, "apkPath":Ljava/lang/String;
    sget-object v7, Lcom/htc/widget/ContainerClockView;->sPathClassInfo:Ljava/util/WeakHashMap;

    iget-object v8, p0, Lcom/htc/widget/ContainerClockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 85
    .local v6, "wPathClassInfo":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/htc/widget/ContainerClockView$PathClassInfo;>;"
    const/4 v3, 0x0

    .line 86
    .local v3, "pathClassInfo":Lcom/htc/widget/ContainerClockView$PathClassInfo;
    if-eqz v6, :cond_2

    .line 87
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "pathClassInfo":Lcom/htc/widget/ContainerClockView$PathClassInfo;
    check-cast v3, Lcom/htc/widget/ContainerClockView$PathClassInfo;

    .line 89
    .restart local v3    # "pathClassInfo":Lcom/htc/widget/ContainerClockView$PathClassInfo;
    :cond_2
    if-eqz v6, :cond_3

    if-nez v3, :cond_5

    .line 90
    :cond_3
    sget-boolean v7, Lcom/htc/widget/ContainerClockView;->DEBUG_FLAG:Z

    if-eqz v7, :cond_4

    const-string v7, "com.htc.widget.ContainerClockView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestContainer: wPathClassInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pathClassInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_4
    new-instance v3, Lcom/htc/widget/ContainerClockView$PathClassInfo;

    .end local v3    # "pathClassInfo":Lcom/htc/widget/ContainerClockView$PathClassInfo;
    invoke-direct {v3, p0, v0}, Lcom/htc/widget/ContainerClockView$PathClassInfo;-><init>(Lcom/htc/widget/ContainerClockView;Ljava/lang/String;)V

    .line 92
    .restart local v3    # "pathClassInfo":Lcom/htc/widget/ContainerClockView$PathClassInfo;
    new-instance v6, Ljava/lang/ref/WeakReference;

    .end local v6    # "wPathClassInfo":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/htc/widget/ContainerClockView$PathClassInfo;>;"
    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 93
    .restart local v6    # "wPathClassInfo":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/htc/widget/ContainerClockView$PathClassInfo;>;"
    sget-object v7, Lcom/htc/widget/ContainerClockView;->sPathClassInfo:Ljava/util/WeakHashMap;

    iget-object v8, p0, Lcom/htc/widget/ContainerClockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_5
    iget-object v7, p0, Lcom/htc/widget/ContainerClockView;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/widget/ContainerClockView;->mClassName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lcom/htc/widget/ContainerClockView$PathClassInfo;->mClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v7, v12, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 96
    .local v5, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v7, v12, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v11

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 97
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v7, v12, [Ljava/lang/Object;

    aput-object v2, v7, v11

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/ContainerClockView;->mView:Ljava/lang/Object;

    .line 98
    iget-object v7, p0, Lcom/htc/widget/ContainerClockView;->mView:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, p0, Lcom/htc/widget/ContainerClockView;->mLayoutParams:I

    iget v10, p0, Lcom/htc/widget/ContainerClockView;->mLayoutParams:I

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/ContainerClockView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const-string v7, "setTimeZone"

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/ContainerClockView;->mSetTimeZone:Ljava/lang/reflect/Method;

    .line 100
    const-string v7, "init"

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Landroid/os/Bundle;

    aput-object v9, v8, v11

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/ContainerClockView;->mInit:Ljava/lang/reflect/Method;

    .line 101
    const-string v7, "setDateFormat"

    new-array v8, v12, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/ContainerClockView;->mSetDateFormat:Ljava/lang/reflect/Method;

    goto/16 :goto_0
.end method

.method private requestTagInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/ContainerClockView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 64
    .restart local v0    # "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 65
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "tagList":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 67
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/htc/widget/ContainerClockView;->mPackageName:Ljava/lang/String;

    .line 68
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/htc/widget/ContainerClockView;->mClassName:Ljava/lang/String;

    .line 69
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/ContainerClockView;->mLayoutParams:I

    .line 74
    .end local v1    # "tagList":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local v1    # "tagList":[Ljava/lang/String;
    :cond_1
    sget-boolean v2, Lcom/htc/widget/ContainerClockView;->DEBUG_FLAG:Z

    if-eqz v2, :cond_0

    const-string v2, "com.htc.widget.ContainerClockView"

    const-string v3, "requestPackageClass: can\'t parse package, class"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/ContainerClockView;->mInit:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/widget/ContainerClockView;->mView:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "com.htc.widget.ContainerClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: fail, Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 5
    .param p1, "dateFormat"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/ContainerClockView;->mSetDateFormat:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/widget/ContainerClockView;->mView:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "com.htc.widget.ContainerClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDateFormat: fail, Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "timezone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/ContainerClockView;->mSetTimeZone:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/widget/ContainerClockView;->mView:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "com.htc.widget.ContainerClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTimeZone: fail, Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
