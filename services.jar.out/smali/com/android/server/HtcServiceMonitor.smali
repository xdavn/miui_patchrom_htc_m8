.class public Lcom/android/server/HtcServiceMonitor;
.super Ljava/lang/Object;
.source "HtcServiceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HtcServiceMonitor$WLDAlarm;,
        Lcom/android/server/HtcServiceMonitor$WLDLocation;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/server/HtcServiceMonitor;


# instance fields
.field private final ALARM_TAG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mASNFlag:Z

.field private mAlarmGroupingDuration:J

.field private mAlarmGroupingFlag:Z

.field private final mAlarmLock:Ljava/lang/Object;

.field private final mLocationLock:Ljava/lang/Object;

.field private mPowerNavigationFlag:Z

.field private mStartRecordingAlarm:Z

.field private mWLDAlarmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/HtcServiceMonitor$WLDAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private mWLDLocationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/HtcServiceMonitor$WLDLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/HtcServiceMonitor;->mInstance:Lcom/android/server/HtcServiceMonitor;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "HtcServiceMonitor"

    iput-object v0, p0, Lcom/android/server/HtcServiceMonitor;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcServiceMonitor;->mLocationLock:Ljava/lang/Object;

    .line 19
    iput-object v3, p0, Lcom/android/server/HtcServiceMonitor;->mWLDLocationList:Ljava/util/List;

    .line 21
    iput-boolean v2, p0, Lcom/android/server/HtcServiceMonitor;->mPowerNavigationFlag:Z

    .line 22
    iput-boolean v2, p0, Lcom/android/server/HtcServiceMonitor;->mAlarmGroupingFlag:Z

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/HtcServiceMonitor;->mAlarmGroupingDuration:J

    .line 24
    iput-boolean v2, p0, Lcom/android/server/HtcServiceMonitor;->mASNFlag:Z

    .line 86
    const-string v0, "[Alarm] "

    iput-object v0, p0, Lcom/android/server/HtcServiceMonitor;->ALARM_TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcServiceMonitor;->mAlarmLock:Ljava/lang/Object;

    .line 88
    iput-object v3, p0, Lcom/android/server/HtcServiceMonitor;->mWLDAlarmList:Ljava/util/List;

    .line 89
    iput-boolean v2, p0, Lcom/android/server/HtcServiceMonitor;->mStartRecordingAlarm:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcServiceMonitor;->mWLDLocationList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcServiceMonitor;->mWLDAlarmList:Ljava/util/List;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mStartRecordingAlarm:Z

    .line 41
    return-void
.end method

.method private convertTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 215
    const-string v0, ""

    .line 216
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    .line 218
    :pswitch_0
    const-string v0, "RTC_WAKEUP"

    goto :goto_0

    .line 219
    :pswitch_1
    const-string v0, "RTC"

    goto :goto_0

    .line 220
    :pswitch_2
    const-string v0, "ELAPSED_REALTIME_WAKEUP"

    goto :goto_0

    .line 221
    :pswitch_3
    const-string v0, "ELAPSED_REALTIME"

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private findAlarmByCreatorPackage(Ljava/lang/String;)Lcom/android/server/HtcServiceMonitor$WLDAlarm;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 201
    .local v2, "result":Lcom/android/server/HtcServiceMonitor$WLDAlarm;
    iget-object v3, p0, Lcom/android/server/HtcServiceMonitor;->mWLDAlarmList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HtcServiceMonitor$WLDAlarm;

    .line 203
    .local v0, "alarm":Lcom/android/server/HtcServiceMonitor$WLDAlarm;
    iget-object v3, v0, Lcom/android/server/HtcServiceMonitor$WLDAlarm;->creatorPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    move-object v2, v0

    .line 210
    .end local v0    # "alarm":Lcom/android/server/HtcServiceMonitor$WLDAlarm;
    :cond_1
    return-object v2
.end method

.method public static getInstance()Lcom/android/server/HtcServiceMonitor;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/server/HtcServiceMonitor;->mInstance:Lcom/android/server/HtcServiceMonitor;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/server/HtcServiceMonitor;

    invoke-direct {v0}, Lcom/android/server/HtcServiceMonitor;-><init>()V

    sput-object v0, Lcom/android/server/HtcServiceMonitor;->mInstance:Lcom/android/server/HtcServiceMonitor;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/server/HtcServiceMonitor;->mInstance:Lcom/android/server/HtcServiceMonitor;

    return-object v0
.end method


# virtual methods
.method public getAlarmGroupingDuration()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/android/server/HtcServiceMonitor;->mAlarmGroupingDuration:J

    return-wide v0
.end method

.method public isASNOn()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mASNFlag:Z

    return v0
.end method

.method public isAlarmGroupingOn()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mAlarmGroupingFlag:Z

    return v0
.end method

.method public isPowerNavigationOn()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mPowerNavigationFlag:Z

    return v0
.end method

.method public setASNOff()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mASNFlag:Z

    .line 237
    return-void
.end method

.method public setASNOn()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mASNFlag:Z

    .line 233
    return-void
.end method

.method public setAlarmGroupingDuration(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/android/server/HtcServiceMonitor;->mAlarmGroupingDuration:J

    .line 123
    return-void
.end method

.method public setAlarmGroupingOff()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mAlarmGroupingFlag:Z

    .line 111
    return-void
.end method

.method public setAlarmGroupingOn()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mAlarmGroupingFlag:Z

    .line 107
    return-void
.end method

.method public setPowerNavigationOff()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mPowerNavigationFlag:Z

    .line 61
    return-void
.end method

.method public setPowerNavigationOn()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mPowerNavigationFlag:Z

    .line 57
    return-void
.end method

.method public startRecordingAlarm()V
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mStartRecordingAlarm:Z

    .line 128
    iget-object v1, p0, Lcom/android/server/HtcServiceMonitor;->mAlarmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HtcServiceMonitor;->mWLDAlarmList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopRecordingAlarm()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcServiceMonitor;->mStartRecordingAlarm:Z

    .line 137
    return-void
.end method
