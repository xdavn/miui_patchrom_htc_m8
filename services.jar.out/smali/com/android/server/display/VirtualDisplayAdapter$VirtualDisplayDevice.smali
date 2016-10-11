.class final Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "VirtualDisplayAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VirtualDisplayDevice"
.end annotation


# static fields
.field private static final PENDING_RESIZE:I = 0x2

.field private static final PENDING_SURFACE_CHANGE:I = 0x1

.field private static final REFRESH_RATE:F = 60.0f


# instance fields
.field private final mAppToken:Landroid/os/IBinder;

.field private final mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

.field private mDensityDpi:I

.field private mDisplayState:I

.field private final mFlags:I

.field private mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mMode:Landroid/view/Display$Mode;

.field final mName:Ljava/lang/String;

.field final mOwnerPackageName:Ljava/lang/String;

.field private final mOwnerUid:I

.field private mPendingChanges:I

.field private mStopped:Z

.field private mSurface:Landroid/view/Surface;

.field private mUniqueIndex:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Ljava/lang/String;I)V
    .locals 1
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "appToken"    # Landroid/os/IBinder;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPackageName"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "densityDpi"    # I
    .param p10, "surface"    # Landroid/view/Surface;
    .param p11, "flags"    # I
    .param p12, "callback"    # Lcom/android/server/display/VirtualDisplayAdapter$Callback;
    .param p13, "uniqueId"    # Ljava/lang/String;
    .param p14, "uniqueIndex"    # I

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 219
    invoke-direct {p0, p1, p2, p13}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 220
    iput-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    .line 221
    iput p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    .line 222
    iput-object p5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    .line 223
    iput-object p6, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 224
    iput p7, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 225
    iput p8, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 226
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p7, p8, v0}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 227
    iput p9, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    .line 228
    iput-object p10, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 229
    iput p11, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 230
    iput-object p12, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 232
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 233
    iput p14, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mUniqueIndex:I

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .prologue
    .line 191
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mUniqueIndex:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/display/VirtualDisplayAdapter;->handleBinderDiedLocked(Landroid/os/IBinder;)V
    invoke-static {v0, v2}, Lcom/android/server/display/VirtualDisplayAdapter;->access$100(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    .line 240
    monitor-exit v1

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroyLocked(Z)V
    .locals 2
    .param p1, "binderAlive"    # Z

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/VirtualDisplayAdapter;->sendStatusChangedBroadcast(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->access$200(Lcom/android/server/display/VirtualDisplayAdapter;I)V

    .line 249
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 250
    if-eqz p1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayStopped()V

    .line 253
    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 320
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v1, :cond_4

    .line 321
    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 322
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 325
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 326
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 327
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 328
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    new-array v2, v0, [Landroid/view/Display$Mode;

    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    aput-object v3, v2, v4

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 329
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 330
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 331
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    int-to-float v2, v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 332
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const-wide/32 v2, 0xfe502a

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 333
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 334
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x30

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 338
    :cond_0
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 339
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 344
    :goto_0
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 347
    :cond_1
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 350
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 353
    const-string v1, "portrait"

    const-string v2, "persist.demo.remoterotation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v2, 0x5

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 360
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 361
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    :cond_3
    iput v0, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 362
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 363
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0

    .line 341
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 3

    .prologue
    .line 270
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    invoke-static {v0, v1, v2}, Landroid/view/SurfaceControl;->setDisplaySize(Landroid/os/IBinder;II)V

    .line 273
    :cond_0
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    .line 276
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 277
    return-void
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .locals 1
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    .prologue
    .line 257
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    if-eq p1, v0, :cond_0

    .line 258
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 259
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayPaused()V

    .line 265
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayResumed()V

    goto :goto_0
.end method

.method public resizeLocked(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I

    .prologue
    .line 292
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    if-eq v0, p3, :cond_1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 294
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->sendTraversalRequestLocked()V

    .line 295
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 296
    iput p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 297
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p1, p2, v0}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 298
    iput p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 300
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 302
    :cond_1
    return-void
.end method

.method public setSurfaceLocked(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    iget-boolean v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eq v2, p1, :cond_1

    .line 281
    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2

    move v2, v0

    :goto_0
    if-eqz p1, :cond_3

    :goto_1
    if-eq v2, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->sendTraversalRequestLocked()V

    .line 285
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 287
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 289
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 281
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    .line 307
    return-void
.end method
