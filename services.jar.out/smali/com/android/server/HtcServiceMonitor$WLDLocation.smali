.class Lcom/android/server/HtcServiceMonitor$WLDLocation;
.super Ljava/lang/Object;
.source "HtcServiceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcServiceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WLDLocation"
.end annotation


# instance fields
.field public id:I

.field public interval:J

.field public packageName:Ljava/lang/String;

.field public pid:I

.field public request:Landroid/location/LocationRequest;

.field final synthetic this$0:Lcom/android/server/HtcServiceMonitor;

.field public uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/HtcServiceMonitor;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/server/HtcServiceMonitor$WLDLocation;->this$0:Lcom/android/server/HtcServiceMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
