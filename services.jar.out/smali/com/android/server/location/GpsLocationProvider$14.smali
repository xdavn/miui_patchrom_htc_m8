.class Lcom/android/server/location/GpsLocationProvider$14;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->write_BI(ZLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field final synthetic val$onoff:Z

.field final synthetic val$packagename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 3583
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$14;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iput-boolean p2, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$onoff:Z

    iput-object p3, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$packagename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 3586
    const-string v3, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " write_BI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$onoff:Z

    if-eqz v2, :cond_0

    const-string v2, "GPS ON "

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$packagename:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/Object;

    .line 3588
    .local v0, "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    const-string v3, "UTD_BI"

    aput-object v3, v0, v2

    .line 3589
    const/4 v2, 0x1

    const-string v3, "C0003"

    aput-object v3, v0, v2

    .line 3590
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$onoff:Z

    if-eqz v2, :cond_1

    .line 3591
    const-string v2, "A0001"

    aput-object v2, v0, v5

    .line 3595
    :goto_1
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$14;->val$packagename:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 3596
    const/4 v2, 0x4

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    .line 3599
    :try_start_0
    # getter for: Lcom/android/server/location/GpsLocationProvider;->HtcSystemUPLogger_write:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$5800()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3608
    :goto_2
    return-void

    .line 3586
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_0
    const-string v2, " GPS OFF "

    goto :goto_0

    .line 3593
    .restart local v0    # "args":[Ljava/lang/Object;
    :cond_1
    const-string v2, "A0002"

    aput-object v2, v0, v5

    goto :goto_1

    .line 3600
    :catch_0
    move-exception v1

    .line 3601
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 3602
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 3603
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 3604
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 3605
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method
