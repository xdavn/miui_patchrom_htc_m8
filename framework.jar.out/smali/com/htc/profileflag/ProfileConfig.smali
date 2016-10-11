.class public Lcom/htc/profileflag/ProfileConfig;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# static fields
.field public static final HtcDebug:Z

.field public static final ISSHIPPING:Z

.field private static final PROP_CHECK_LOW_MEMORY:Ljava/lang/String; = "profiler.checklowmemory"

.field private static final PROP_KEY_PERFORMANCE:Ljava/lang/String; = "profiler.performance"

.field private static final PROP_KEY_PREFIX:Ljava/lang/String; = "profiler."

.field private static final PROP_MONITOR_THREAD_CPU_USAGE:Ljava/lang/String; = "profiler.monitorthreadcpuusage"

.field private static final PROP_OPEN_CURSOR:Ljava/lang/String; = "profiler.opencursor"

.field private static build_stage:I

.field private static profile_checklowmemory:Z

.field private static profile_monitor_thread_cpu_usage:Z

.field private static profile_opencursor:Z

.field private static profile_performance:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8
    invoke-static {}, Ljava/lang/System;->isShippingRom()Z

    move-result v0

    sput-boolean v0, Lcom/htc/profileflag/ProfileConfig;->ISSHIPPING:Z

    .line 9
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->ISSHIPPING:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    .line 39
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-ne v0, v1, :cond_2

    const-string v0, "profiler.performance"

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    sput v0, Lcom/htc/profileflag/ProfileConfig;->profile_performance:I

    .line 45
    const-string v0, "profiler.opencursor"

    sget-boolean v1, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    .line 48
    const-string v0, "profiler.checklowmemory"

    sget-boolean v1, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowmemory:Z

    .line 50
    const-string v0, "profiler.monitorthreadcpuusage"

    sget-boolean v1, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_monitor_thread_cpu_usage:Z

    .line 78
    const-string v0, "htc.build.stage"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/htc/profileflag/ProfileConfig;->build_stage:I

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "profiler.performance"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    const-string v0, "profiler.performance"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckLowMemory()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_checklowmemory:Z

    return v0
.end method

.method public static getInputDispatchingTimeout()I
    .locals 2

    .prologue
    .line 82
    sget v0, Lcom/htc/profileflag/ProfileConfig;->build_stage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/htc/profileflag/ProfileConfig;->build_stage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 83
    :cond_0
    const/16 v0, 0x3a98

    .line 86
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x1388

    goto :goto_0
.end method

.method public static getProfileMonitorThreadCpuUsage()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_monitor_thread_cpu_usage:Z

    return v0
.end method

.method public static getProfileOpenCursor()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    return v0
.end method

.method public static getProfilePerformance()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/htc/profileflag/ProfileConfig;->profile_performance:I

    return v0
.end method

.method public static setProfileOpenCursor(Z)V
    .locals 0
    .param p0, "opencursor"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/htc/profileflag/ProfileConfig;->profile_opencursor:Z

    .line 27
    return-void
.end method
