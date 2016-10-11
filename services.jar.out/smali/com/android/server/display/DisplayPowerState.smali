.class final Lcom/android/server/display/DisplayPowerState;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    }
.end annotation


# static fields
.field public static final COLOR_FADE_LEVEL:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field private static final DEBUG_ON:Z

.field public static final SCREEN_BRIGHTNESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "XAN-DPS"


# instance fields
.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBurstModeLevel:I

.field private final mButtonLight:Lcom/android/server/lights/Light;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCleanListener:Ljava/lang/Runnable;

.field private final mColorFade:Lcom/android/server/display/ColorFade;

.field private mColorFadeDrawPending:Z

.field private final mColorFadeDrawRunnable:Ljava/lang/Runnable;

.field private mColorFadeLevel:F

.field private mColorFadePrepared:Z

.field private mColorFadeReady:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

.field private mPreBurstModeLevel:I

.field private mPreviousBacklight:I

.field private mScreenBrightness:I

.field private mScreenReady:Z

.field private mScreenState:I

.field private mScreenUpdatePending:Z

.field private final mScreenUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 58
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    .line 121
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    const-string v1, "electronBeamLevel"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 134
    new-instance v0, Lcom/android/server/display/DisplayPowerState$2;

    const-string v1, "screenBrightness"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;Lcom/android/server/lights/Light;)V
    .locals 3
    .param p1, "blanker"    # Lcom/android/server/display/DisplayBlanker;
    .param p2, "colorFade"    # Lcom/android/server/display/ColorFade;
    .param p3, "buttonLight"    # Lcom/android/server/lights/Light;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Lcom/android/server/display/DisplayPowerState;->mPreviousBacklight:I

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mPreBurstModeLevel:I

    .line 89
    iput v1, p0, Lcom/android/server/display/DisplayPowerState;->mBurstModeLevel:I

    .line 344
    new-instance v0, Lcom/android/server/display/DisplayPowerState$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$3;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    .line 374
    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 97
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 98
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 100
    iput-object p3, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    .line 102
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 103
    new-instance v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 104
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->start()V

    .line 112
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 113
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    .line 114
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 116
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 117
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 118
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 119
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayPowerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mPreviousBacklight:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/display/DisplayPowerState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mPreviousBacklight:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerState;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerState;->appendBurstModeLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->invokeCleanListenerIfNeeded()V

    return-void
.end method

.method private appendBurstModeLevel(I)I
    .locals 2
    .param p1, "backlight"    # I

    .prologue
    .line 413
    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mBurstModeLevel:I

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x10

    .line 414
    .local v0, "burstModeLevel":I
    or-int v1, p1, v0

    return v1
.end method

.method private invokeCleanListenerIfNeeded()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 338
    .local v0, "listener":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-eqz v1, :cond_0

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 340
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 342
    :cond_0
    return-void
.end method

.method private postScreenUpdateThreadSafe()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method private scheduleColorFadeDraw()V
    .locals 4

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 331
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 334
    :cond_0
    return-void
.end method

.method private scheduleScreenUpdate()V
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 319
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissColorFade()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 244
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 301
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 302
    const-string v0, "Display Power State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadePrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeDrawPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->dump(Ljava/io/PrintWriter;)V

    .line 313
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorFade;->dump(Ljava/io/PrintWriter;)V

    .line 314
    return-void
.end method

.method public getColorFadeLevel()F
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return v0
.end method

.method public getScreenBrightness()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method public getScreenState()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return v0
.end method

.method public prepareColorFade(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 224
    const-string v2, "XAN-DPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareColorFade "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/ColorFade;->prepare(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 234
    :goto_0
    return v0

    .line 230
    :cond_0
    const-string v2, "XAN-DPS"

    const-string v3, "prepareColorFade done"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 232
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 233
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    move v0, v1

    .line 234
    goto :goto_0
.end method

.method public setBurstModeLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 403
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mBurstModeLevel:I

    .line 404
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 405
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mPreBurstModeLevel:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mBurstModeLevel:I

    if-eq v0, v1, :cond_0

    .line 406
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set BML("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerState;->mPreBurstModeLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerState;->mBurstModeLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mBurstModeLevel:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mPreBurstModeLevel:I

    .line 410
    :cond_0
    return-void
.end method

.method public setButtonBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 390
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 391
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 394
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 398
    :cond_1
    return-void
.end method

.method public setColorFadeLevel(F)V
    .locals 4
    .param p1, "level"    # F

    .prologue
    const/4 v3, 0x0

    .line 260
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 261
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorFadeLevel: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 266
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 267
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 268
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 270
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    if-eqz v0, :cond_2

    .line 271
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 272
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    .line 275
    :cond_2
    return-void
.end method

.method public setScreenBrightness(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    const/4 v3, 0x1

    .line 177
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 178
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    if-ne v0, p1, :cond_0

    .line 179
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->access$000(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)I

    move-result v0

    sget v1, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    if-eq v0, v1, :cond_4

    .line 187
    :cond_1
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 188
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenBrightness: brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    .line 194
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_3

    .line 195
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-ne v0, v3, :cond_3

    .line 196
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSB at s off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_3
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v0, v3, :cond_4

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 203
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 206
    :cond_4
    return-void
.end method

.method public setScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v0, p1, :cond_1

    .line 152
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenState: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 158
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 160
    :cond_1
    return-void
.end method

.method public waitUntilClean(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-nez v0, :cond_1

    .line 292
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 293
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    .line 295
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 296
    const/4 v0, 0x1

    goto :goto_0
.end method
