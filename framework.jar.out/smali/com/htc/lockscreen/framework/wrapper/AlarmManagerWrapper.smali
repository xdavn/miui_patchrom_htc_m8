.class public Lcom/htc/lockscreen/framework/wrapper/AlarmManagerWrapper;
.super Ljava/lang/Object;
.source "AlarmManagerWrapper.java"


# static fields
.field public static final ACTION_NEXT_ALARM_CLOCK_CHANGED:Ljava/lang/String; = "android.app.action.NEXT_ALARM_CLOCK_CHANGED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getNextAlarmClock(Landroid/app/AlarmManager;I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1
    .param p0, "manager"    # Landroid/app/AlarmManager;
    .param p1, "userId"    # I

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 12
    .local v0, "result":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    .line 15
    :cond_0
    return-object v0
.end method
