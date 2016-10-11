.class Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
.super Ljava/lang/Object;
.source "KDDIGeofenceManager.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/KDDIGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LMSGeofenceClient"
.end annotation


# static fields
.field private static final STATE_INSIDE:I = 0x1

.field private static final STATE_OUTSIDE:I = 0x2

.field private static final STATE_UNKNOWN:I


# instance fields
.field public final mAllowedResolutionLevel:I

.field private volatile mDistanceToCenter:D

.field public final mExpireAt:J

.field public final mGeofence:Landroid/location/Geofence;

.field public final mPackageName:Ljava/lang/String;

.field public final mPendingIntent:Landroid/app/PendingIntent;

.field private volatile mState:I

.field public final mUid:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mid:I

.field final synthetic this$0:Lcom/android/server/location/KDDIGeofenceManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/KDDIGeofenceManager;ILandroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;IJI)V
    .locals 3
    .param p2, "geo_id"    # I
    .param p3, "geofence"    # Landroid/location/Geofence;
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "allowedResolutionLevel"    # I
    .param p7, "expireAt"    # J
    .param p9, "uid"    # I

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mState:I

    .line 820
    iput p2, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    .line 821
    iput-object p3, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    .line 822
    iput-object p4, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    .line 823
    iput-object p5, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    .line 824
    iput p6, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mAllowedResolutionLevel:I

    .line 825
    iput-wide p7, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mExpireAt:J

    .line 826
    iput p9, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mUid:I

    .line 827
    # getter for: Lcom/android/server/location/KDDIGeofenceManager;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {p1}, Lcom/android/server/location/KDDIGeofenceManager;->access$1600(Lcom/android/server/location/KDDIGeofenceManager;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "KDDIGeofenceManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 828
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mDistanceToCenter:D

    .line 829
    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;

    .prologue
    .line 799
    iget-wide v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mDistanceToCenter:D

    return-wide v0
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 8
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    # getter for: Lcom/android/server/location/KDDIGeofenceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/KDDIGeofenceManager;->access$1700(Lcom/android/server/location/KDDIGeofenceManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :goto_0
    return-void

    .line 913
    :catch_0
    move-exception v7

    .line 914
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 915
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->this$0:Lcom/android/server/location/KDDIGeofenceManager;

    iget v1, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    # invokes: Lcom/android/server/location/KDDIGeofenceManager;->removeGeoFenceClient(I)V
    invoke-static {v0, v1}, Lcom/android/server/location/KDDIGeofenceManager;->access$1800(Lcom/android/server/location/KDDIGeofenceManager;I)V

    goto :goto_0
.end method

.method private sendIntentEnter(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 891
    const-string v1, "KDDIGeofenceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentEnter: pendingIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 895
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entering"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 896
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 897
    return-void
.end method

.method private sendIntentExit(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 900
    const-string v1, "KDDIGeofenceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentExit: pendingIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 904
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "entering"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 905
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 906
    return-void
.end method

.method private updateDistance(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 876
    const/4 v0, 0x3

    new-array v8, v0, [F

    .line 877
    .local v8, "results":[F
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v0}, Landroid/location/Geofence;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v2}, Landroid/location/Geofence;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 879
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mDistanceToCenter:D

    .line 880
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 924
    if-ne p0, p1, :cond_1

    .line 933
    :cond_0
    :goto_0
    return v1

    .line 927
    :cond_1
    instance-of v3, p1, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;

    if-nez v3, :cond_2

    move v1, v2

    .line 928
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 931
    check-cast v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;

    .line 933
    .local v0, "lmsg":Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;
    iget v3, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    iget v4, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    iget-object v4, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v3, v4}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mAllowedResolutionLevel:I

    iget v4, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mAllowedResolutionLevel:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mExpireAt:J

    iget-wide v6, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mExpireAt:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mUid:I

    iget v4, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mUid:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    return v0
.end method

.method public onLocationChange(Landroid/location/Location;)V
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x1

    .line 833
    invoke-direct {p0, p1}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->updateDistance(Landroid/location/Location;)V

    .line 835
    iget v1, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mState:I

    .line 837
    .local v1, "prevState":I
    iget-wide v4, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mDistanceToCenter:D

    iget-object v3, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v3}, Landroid/location/Geofence;->getRadius()F

    move-result v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_1

    move v0, v2

    .line 838
    .local v0, "inside":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 839
    iput v2, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mState:I

    .line 840
    if-eq v1, v2, :cond_0

    .line 841
    const-string v2, "KDDIGeofenceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LMSGeofenceClient "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Enter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v2}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->sendIntentEnter(Landroid/app/PendingIntent;)V

    .line 852
    :cond_0
    :goto_1
    return-void

    .line 837
    .end local v0    # "inside":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 845
    .restart local v0    # "inside":Z
    :cond_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mState:I

    .line 846
    if-ne v1, v2, :cond_0

    .line 847
    const-string v2, "KDDIGeofenceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LMSGeofenceClient "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Exit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v2, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v2}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->sendIntentExit(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 887
    return-void
.end method

.method public onTransition(ILandroid/location/Location;)V
    .locals 5
    .param p1, "transition"    # I
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 856
    const-string v0, "KDDIGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LMSGeofenceClient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onTransition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-direct {p0, p2}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->updateDistance(Landroid/location/Location;)V

    .line 859
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mState:I

    if-eq v0, v3, :cond_0

    .line 861
    const-string v0, "KDDIGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LMSGeofenceClient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iput v3, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mState:I

    .line 863
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->sendIntentEnter(Landroid/app/PendingIntent;)V

    .line 865
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mState:I

    if-eq v0, v4, :cond_1

    .line 867
    const-string v0, "KDDIGeofenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LMSGeofenceClient "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iput v4, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mState:I

    .line 869
    iget-object v0, p0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->sendIntentExit(Landroid/app/PendingIntent;)V

    .line 872
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .prologue
    .line 950
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    .local v10, "s":Ljava/lang/StringBuilder;
    const-string v11, " LMSGeofenceClient[ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    const-string v11, " Id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 957
    const-string v11, " State: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mState:I

    packed-switch v11, :pswitch_data_0

    .line 970
    const-string v11, " UNKNOWN "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Distance: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mDistanceToCenter:D

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mExpireAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v6, v14, v16

    .line 978
    .local v6, "millis":J
    const-wide/16 v14, 0x0

    cmp-long v11, v6, v14

    if-lez v11, :cond_3

    .line 979
    const-string v11, " Expire At: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v6, v7}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    .line 981
    .local v2, "days":J
    sget-object v11, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    sub-long/2addr v6, v14

    .line 982
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v6, v7}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    .line 983
    .local v4, "hours":J
    sget-object v11, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    sub-long/2addr v6, v14

    .line 984
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    .line 985
    .local v8, "minutes":J
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    sub-long/2addr v6, v14

    .line 986
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v12

    .line 987
    .local v12, "seconds":J
    const-string v11, " %d days, %d hours %d min, %d sec "

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .end local v2    # "days":J
    .end local v4    # "hours":J
    .end local v8    # "minutes":J
    .end local v12    # "seconds":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 994
    const-string v11, " PackageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    if-eqz v11, :cond_1

    .line 998
    const-string v11, " Geofence: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v11}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_2

    .line 1002
    const-string v11, " PendingIntent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/KDDIGeofenceManager$LMSGeofenceClient;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    :cond_2
    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 961
    .end local v6    # "millis":J
    :pswitch_0
    const-string v11, " UNKNOWN "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 964
    :pswitch_1
    const-string v11, " INSIDE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 967
    :pswitch_2
    const-string v11, " OUTSIDE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 990
    .restart local v6    # "millis":J
    :cond_3
    const-string v11, " Already expired "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
