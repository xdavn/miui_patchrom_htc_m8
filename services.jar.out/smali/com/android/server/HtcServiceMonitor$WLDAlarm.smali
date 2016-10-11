.class Lcom/android/server/HtcServiceMonitor$WLDAlarm;
.super Ljava/lang/Object;
.source "HtcServiceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcServiceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WLDAlarm"
.end annotation


# instance fields
.field public alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public creatorPackageName:Ljava/lang/String;

.field public creatorUid:I

.field public interval:J

.field public operation:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/HtcServiceMonitor;

.field public triggerAtTime:J

.field public type:I

.field public windowLength:J

.field public workSource:Landroid/os/WorkSource;


# direct methods
.method private constructor <init>(Lcom/android/server/HtcServiceMonitor;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/HtcServiceMonitor$WLDAlarm;->this$0:Lcom/android/server/HtcServiceMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
