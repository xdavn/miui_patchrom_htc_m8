.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$OnClosedCaptionListener;,
        Landroid/media/MediaPlayer$TimeProvider;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;,
        Landroid/media/MediaPlayer$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_HTC_INVOKE_FORCE_AWESOME_SETDATASOURCE:I = 0x231e

.field private static final ANDROID_HTC_INVOKE_GET_CALLING_PROCESS:I = 0x231f

.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_LANGUAGE:I = 0x8

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final KEY_PARAMETER_AUDIO_ATTRIBUTES:I = 0x578

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_CLOSED_CAPTION:I = 0x69

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_SYSTEM:I = -0x80000000

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_HTC_IS_OFFLOAD:I = 0x1f4

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_META_DATA:I = 0xca

.field public static final MEDIA_MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MEDIA_MIMETYPE_TEXT_SMPTETT:Ljava/lang/String; = "application/x-smptett"

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SKIPPED:I = 0x9

.field private static final MEDIA_STARTED:I = 0x6

.field private static final MEDIA_STOPPED:I = 0x8

.field private static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final MM_HEADERS:[Ljava/lang/String;

.field private static final MM_SETTINGS:[Ljava/lang/String;

.field public static final PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field private static final SETTING_PREFIX_7:Ljava/lang/String; = "videoplayer_"

.field private static final SETTING_SUFFIX:Ljava/lang/String; = "_HTC"

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2

.field private static mAESKey:Ljava/lang/String;


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAudioOffload:Z

.field private mBypassInterruptionPolicy:Z

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mInbandTrackIndices:Ljava/util/BitSet;

.field private mIndexTrackPairs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsPartialWake:Z

.field private mListenerContext:I

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnWhilePlaying:Z

.field private mSelectedSubtitleTrackIndex:I

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSubtitleController:Landroid/media/SubtitleController;

.field private mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

.field private mUsage:I

.field private mUseProxy:Ljava/lang/Boolean;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 630
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 631
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 4060
    const/4 v0, 0x0

    sput-object v0, Landroid/media/MediaPlayer;->mAESKey:Ljava/lang/String;

    .line 4067
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "minudpport"

    aput-object v1, v0, v3

    const-string/jumbo v1, "maxudpport"

    aput-object v1, v0, v4

    const-string v1, "buffertime"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "rtsptimeout"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "rtptimeout"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "rtcpreportinterval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "rtspkeepaliveinterval"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .line 4080
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "rtspuseragent"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wapprofile"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object v4, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 649
    const/high16 v2, -0x80000000

    iput v2, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 650
    iput v5, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 654
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mIsPartialWake:Z

    .line 655
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mAudioOffload:Z

    .line 2149
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    .line 2150
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    .line 2279
    iput v5, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2282
    new-instance v2, Landroid/media/MediaPlayer$2;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 4058
    iput-object v4, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 4059
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    .line 668
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 669
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 676
    :goto_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 677
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    .line 678
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 679
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 684
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 685
    return-void

    .line 670
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 671
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    .line 673
    :cond_1
    iput-object v4, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setAudioStreamType(I)V
.end method

.method private native _setAuxEffectSendLevel(F)V
.end method

.method private native _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/MediaPlayer;Landroid/media/SubtitleController;)Landroid/media/SubtitleController;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Landroid/media/SubtitleController;

    .prologue
    .line 594
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p1
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mIsPartialWake:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/media/MediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mAudioOffload:Z

    return v0
.end method

.method static synthetic access$1902(Landroid/media/MediaPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 594
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mAudioOffload:Z

    return p1
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/media/MediaPlayer;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 594
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-wide v0, p0, Landroid/media/MediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 594
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method private addExtraHeaders(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4618
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p3}, Landroid/media/MediaPlayer;->add_mm_headers_runtime(Ljava/util/Map;)V

    .line 4621
    invoke-direct {p0, p1, p3}, Landroid/media/MediaPlayer;->add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V

    .line 4626
    invoke-direct {p0, p1, p3}, Landroid/media/MediaPlayer;->add_mm_settings(Landroid/content/ContentResolver;Ljava/util/Map;)V

    .line 4630
    invoke-direct {p0, p2, p1, p3}, Landroid/media/MediaPlayer;->addProxyInfoIfNecessary(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/util/Map;)V

    .line 4633
    invoke-direct {p0, p3}, Landroid/media/MediaPlayer;->add_support_customer_proxy(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4638
    :goto_0
    return-void

    .line 4635
    :catch_0
    move-exception v0

    .line 4636
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addProxyInfoIfNecessary(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/util/Map;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4544
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 4545
    :cond_0
    const-string v6, "MediaPlayer"

    const-string v7, "ContentResolver is null, or headers is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    :cond_1
    :goto_0
    return-void

    .line 4550
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 4552
    .local v3, "host":Ljava/lang/String;
    const-string/jumbo v6, "videoplayer_rtspproxyip_HTC"

    invoke-static {p2, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4553
    .local v4, "rtspProxyIP":Ljava/lang/String;
    const-string/jumbo v6, "videoplayer_rtspproxyport_HTC"

    invoke-static {p2, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4556
    .local v5, "rtspProxyPort":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4557
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4558
    invoke-direct {p0, p2, v4}, Landroid/media/MediaPlayer;->decode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4559
    .local v0, "dec_rtspProxyIP":Ljava/lang/String;
    invoke-direct {p0, p2, v5}, Landroid/media/MediaPlayer;->decode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4561
    .local v1, "dec_rtspProxyPort":Ljava/lang/String;
    const-string v6, "0.0.0.0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 4562
    const-string/jumbo v6, "localhost"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "127.0.0.1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 4564
    :cond_3
    const-string v6, "MediaPlayer"

    const-string/jumbo v7, "localhost"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4576
    .end local v0    # "dec_rtspProxyIP":Ljava/lang/String;
    .end local v1    # "dec_rtspProxyPort":Ljava/lang/String;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "rtspProxyIP":Ljava/lang/String;
    .end local v5    # "rtspProxyPort":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 4577
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4566
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "dec_rtspProxyIP":Ljava/lang/String;
    .restart local v1    # "dec_rtspProxyPort":Ljava/lang/String;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "rtspProxyIP":Ljava/lang/String;
    .restart local v5    # "rtspProxyPort":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v6, "MediaPlayer"

    const-string/jumbo v7, "setting rtsp proxy"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    const-string/jumbo v6, "x-htc-rtspproxyip"

    invoke-interface {p3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4568
    const-string/jumbo v6, "x-htc-rtspproxyport"

    invoke-interface {p3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V
    .locals 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4125
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 4126
    :cond_0
    const-string v6, "MediaPlayer"

    const-string v7, "ContentResolver is null, or headers is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    :cond_1
    return-void

    .line 4131
    :cond_2
    sget-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 4132
    .local v2, "header_name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "videoplayer_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_HTC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4134
    .local v3, "header_value":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4135
    :cond_3
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip header ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", null )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4139
    :cond_5
    invoke-direct {p0, p1, v3}, Landroid/media/MediaPlayer;->decode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4140
    .local v1, "dec_header_value":Ljava/lang/String;
    const-string/jumbo v6, "rtspuseragent"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "User-Agent"

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 4141
    if-eqz v1, :cond_4

    .line 4142
    const-string v6, "User-Agent"

    invoke-interface {p2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4144
    :cond_6
    const-string/jumbo v6, "wapprofile"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "x-wap-profile"

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4145
    if-eqz v1, :cond_4

    .line 4146
    const-string/jumbo v6, "x-wap-profile"

    invoke-interface {p2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private add_mm_headers_runtime(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 4268
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    .line 4271
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4272
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4274
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=wifi"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    const-string/jumbo v5, "x-network-type"

    const-string v6, "WIFI"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4276
    const-string v5, "Bandwidth"

    const-string v6, "11000000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4416
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 4278
    .restart local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :cond_0
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4280
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=wimax"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4281
    const-string/jumbo v5, "x-network-type"

    const-string v6, "Wimax"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4282
    const-string v5, "Bandwidth"

    const-string v6, "11000000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4284
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isUsingProxyProject()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4285
    const-string v5, "MediaPlayer"

    const-string v6, "This project need to use proxy."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4286
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4412
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 4413
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4288
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :cond_1
    :try_start_1
    const-string v5, "MediaPlayer"

    const-string v6, "This project don\'t need to use proxy."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4291
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    .line 4293
    const/4 v2, -0x1

    .line 4296
    .local v2, "phoneNetworkType":I
    :try_start_2
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 4297
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "operator number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 4300
    .local v3, "telNetworkType":I
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 4302
    packed-switch v3, :pswitch_data_0

    .line 4328
    .end local v3    # "telNetworkType":I
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_1
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 4332
    :pswitch_0
    :try_start_3
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=GPRS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    const-string/jumbo v5, "x-network-type"

    const-string v6, "GSM"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4334
    const-string v5, "Bandwidth"

    const-string v6, "141000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4305
    .restart local v3    # "telNetworkType":I
    .restart local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :pswitch_1
    :try_start_4
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "unknow telphone network type"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 4324
    .end local v3    # "telNetworkType":I
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v1

    .line 4325
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "MediaPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 4308
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "telNetworkType":I
    .restart local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :pswitch_2
    :try_start_6
    const-string v5, "MediaPlayer"

    const-string v6, "GSM telphone network type"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4311
    :pswitch_3
    const-string v5, "MediaPlayer"

    const-string v6, "TelephonyManager.PHONE_TYPE_CDMA"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isUsingProxyProject()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4313
    const-string v5, "MediaPlayer"

    const-string v6, "This project need to use proxy."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4314
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    goto :goto_1

    .line 4316
    :cond_3
    const-string v5, "MediaPlayer"

    const-string v6, "This project don\'t need to use proxy."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4320
    :pswitch_4
    const-string v5, "MediaPlayer"

    const-string v6, "TelephonyManager.PHONE_TYPE_SIP"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 4338
    .end local v3    # "telNetworkType":I
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :pswitch_5
    :try_start_7
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EDGE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    const-string/jumbo v5, "x-network-type"

    const-string v6, "GSM"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4340
    const-string v5, "Bandwidth"

    const-string v6, "384000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4350
    :pswitch_6
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=UMTS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    const-string/jumbo v5, "x-network-type"

    const-string v6, "UMTS"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4352
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4356
    :pswitch_7
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=CDMA"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    const-string/jumbo v5, "x-network-type"

    const-string/jumbo v6, "iS95"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4358
    const-string v5, "Bandwidth"

    const-string v6, "141000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4362
    :pswitch_8
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4363
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO 0"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4364
    const-string v5, "Bandwidth"

    const-string v6, "2400000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4368
    :pswitch_9
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD0 A"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO A"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4370
    const-string v5, "Bandwidth"

    const-string v6, "3100000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4374
    :pswitch_a
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD0 B"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO B"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4376
    const-string v5, "Bandwidth"

    const-string v6, "4900000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4380
    :pswitch_b
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=1xRTT"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    const-string/jumbo v5, "x-network-type"

    const-string v6, "1xRTT"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4382
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4386
    :pswitch_c
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=LTE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    const-string/jumbo v5, "x-network-type"

    const-string v6, "LTE"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4388
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4392
    :pswitch_d
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=IDEN"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    const-string/jumbo v5, "x-network-type"

    const-string v6, "IDEN"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4394
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4398
    :pswitch_e
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EHRPD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EHRPD"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4400
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4404
    :pswitch_f
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=HSPAP"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4405
    const-string/jumbo v5, "x-network-type"

    const-string v6, "HSPAP"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4406
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4410
    .end local v2    # "phoneNetworkType":I
    :cond_4
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "unknown network type"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 4302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 4328
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_d
        :pswitch_a
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private add_mm_settings(Landroid/content/ContentResolver;Ljava/util/Map;)V
    .locals 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4094
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 4095
    :cond_0
    const-string v6, "MediaPlayer"

    const-string v7, "ContentResolver is null, or headers is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4113
    :cond_1
    return-void

    .line 4100
    :cond_2
    sget-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 4101
    .local v4, "setting_name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "videoplayer_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_HTC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4103
    .local v5, "setting_value":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4104
    :cond_3
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip setting ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", null ) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4108
    :cond_5
    invoke-direct {p0, p1, v5}, Landroid/media/MediaPlayer;->decode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4109
    .local v1, "dec_setting_value":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 4110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x-htc-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private add_support_customer_proxy(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4590
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 4591
    const-string v0, "MediaPlayer"

    const-string v1, "headers is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4600
    :goto_0
    return-void

    .line 4595
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isUsingProxyProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4596
    const-string/jumbo v0, "x-htc-support_customer_proxy"

    const-string/jumbo v1, "true"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4598
    :cond_1
    const-string/jumbo v0, "x-htc-support_customer_proxy"

    const-string v1, "false"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2223
    const-string v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/x-smptett"

    if-ne p0, v0, :cond_1

    .line 2225
    :cond_0
    const/4 v0, 0x1

    .line 2228
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 958
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 959
    .local v0, "s":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    invoke-static {p0, p1, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    .restart local v0    # "s":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .prologue
    const/4 v9, 0x0

    .line 976
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 977
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v7, :cond_0

    move-object v0, v9

    .line 1000
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 979
    .restart local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 981
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz p2, :cond_1

    move-object v6, p2

    .line 983
    .local v6, "aa":Landroid/media/AudioAttributes;
    :goto_1
    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 984
    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 986
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 987
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 988
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 990
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v6    # "aa":Landroid/media/AudioAttributes;
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v8

    .line 991
    .local v8, "ex":Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v8    # "ex":Ljava/io/IOException;
    :goto_2
    move-object v0, v9

    .line 1000
    goto :goto_0

    .line 981
    .restart local v0    # "mp":Landroid/media/MediaPlayer;
    .restart local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    goto :goto_1

    .line 993
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v8

    .line 994
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 996
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 997
    .local v8, "ex":Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 895
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 896
    .local v0, "s":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    invoke-static {p0, p1, p2, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    .restart local v0    # "s":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;
    .param p3, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p4, "audioSessionId"    # I

    .prologue
    .line 914
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 915
    .local v2, "mp":Landroid/media/MediaPlayer;
    if-eqz p3, :cond_1

    move-object v0, p3

    .line 917
    .local v0, "aa":Landroid/media/AudioAttributes;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 918
    invoke-virtual {v2, p4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 919
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 920
    if-eqz p2, :cond_0

    .line 921
    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 923
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 936
    .end local v0    # "aa":Landroid/media/AudioAttributes;
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    :goto_1
    return-object v2

    .line 915
    .restart local v2    # "mp":Landroid/media/MediaPlayer;
    :cond_1
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 925
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    .line 926
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 928
    :catch_1
    move-exception v1

    .line 929
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 931
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 932
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private decode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 4187
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4188
    :cond_0
    const-string v8, "MediaPlayer"

    const-string v10, "ContentResolver is null, or String is null"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 4219
    :goto_0
    return-object v8

    .line 4193
    :cond_1
    :try_start_0
    sget-object v8, Landroid/media/MediaPlayer;->mAESKey:Ljava/lang/String;

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "android_id"

    invoke-static {p1, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Landroid/media/MediaPlayer;->mAESKey:Ljava/lang/String;

    .line 4195
    :cond_2
    sget-object v8, Landroid/media/MediaPlayer;->mAESKey:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 4197
    sget-object v8, Landroid/media/MediaPlayer;->mAESKey:Ljava/lang/String;

    invoke-direct {p0, v8}, Landroid/media/MediaPlayer;->getAESKey(Ljava/lang/String;)[B

    move-result-object v0

    .line 4199
    .local v0, "abyAESKey":[B
    const/16 v8, 0x10

    new-array v5, v8, [B

    fill-array-data v5, :array_0

    .line 4200
    .local v5, "seed":[B
    const-string v8, "android_id"

    invoke-static {p1, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4201
    .local v1, "android_id":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 4202
    .local v6, "seedSrc":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v8, v6

    array-length v12, v5

    if-ge v8, v12, :cond_3

    array-length v8, v6

    :goto_1
    invoke-static {v6, v10, v5, v11, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 4204
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 4205
    .local v4, "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v0, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4207
    .local v7, "spec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 4208
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v2, v8, v7, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 4210
    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x2

    invoke-static {p2, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4214
    .end local v0    # "abyAESKey":[B
    .end local v1    # "android_id":Ljava/lang/String;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "seed":[B
    .end local v6    # "seedSrc":[B
    .end local v7    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v3

    .line 4215
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4218
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v8, "MediaPlayer"

    const-string v10, "decode() failed !!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 4219
    goto :goto_0

    .line 4202
    .restart local v0    # "abyAESKey":[B
    .restart local v1    # "android_id":Ljava/lang/String;
    .restart local v5    # "seed":[B
    .restart local v6    # "seedSrc":[B
    :cond_3
    :try_start_1
    array-length v8, v5

    goto :goto_1

    .line 4212
    .end local v0    # "abyAESKey":[B
    .end local v1    # "android_id":Ljava/lang/String;
    .end local v5    # "seed":[B
    .end local v6    # "seedSrc":[B
    :cond_4
    const-string v8, "MediaPlayer"

    const-string/jumbo v10, "mAESKey is null !!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 4199
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getAESKey(Ljava/lang/String;)[B
    .locals 5
    .param p1, "strKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4159
    if-nez p1, :cond_0

    .line 4160
    const-string v3, "MediaPlayer"

    const-string v4, "String is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    :goto_0
    return-object v0

    .line 4165
    :cond_0
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 4166
    .local v2, "md":Ljava/security/MessageDigest;
    if-eqz v2, :cond_1

    .line 4167
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4168
    .local v0, "abyAESKey":[B
    goto :goto_0

    .line 4170
    .end local v0    # "abyAESKey":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 4171
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4174
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "MediaPlayer"

    const-string v4, "getAESKey() failed !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAudioStreamType()I
    .locals 2

    .prologue
    .line 1292
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1293
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_getAudioStreamType()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1295
    :cond_0
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    return v0
.end method

.method private getCallingProcess(Z)V
    .locals 6
    .param p1, "needCheckUseAwesomePlayer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 4031
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4032
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4033
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4035
    .local v1, "reply":Landroid/os/Parcel;
    if-eqz v0, :cond_0

    .line 4036
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANDROID_HTC_INVOKE_GET_CALLING_PROCESS packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4038
    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 4423
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 4424
    iget-object v4, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 4462
    :goto_0
    return-object v4

    .line 4427
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 4428
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 4430
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4431
    .local v3, "handler":Landroid/os/Handler;
    new-instance v5, Landroid/media/MediaPlayer$5;

    invoke-direct {v5, p0}, Landroid/media/MediaPlayer$5;-><init>(Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4439
    const/4 v0, 0x0

    .line 4440
    .local v0, "count":I
    :goto_1
    const/16 v5, 0x32

    if-ge v0, v5, :cond_1

    .line 4442
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 4443
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4449
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4446
    :catch_0
    move-exception v1

    .line 4447
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "sleep() error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 4456
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "handler":Landroid/os/Handler;
    :catch_1
    move-exception v2

    .line 4457
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not get application context, ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4451
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v3    # "handler":Landroid/os/Handler;
    :cond_1
    :try_start_3
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 4452
    const-string v5, "MediaPlayer"

    const-string v6, "can not get application context"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 4462
    .end local v0    # "count":I
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_2
    iget-object v4, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2181
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2183
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2184
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2186
    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    .local v2, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2189
    .end local v2    # "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private isRestricted()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1277
    iget-boolean v4, p0, Landroid/media/MediaPlayer;->mBypassInterruptionPolicy:Z

    if-eqz v4, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return v3

    .line 1281
    :cond_1
    :try_start_0
    iget v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v2, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 1283
    .local v2, "usage":I
    :goto_1
    iget-object v4, p0, Landroid/media/MediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x1c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v2, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 1285
    .local v1, "mode":I
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 1281
    .end local v1    # "mode":I
    .end local v2    # "usage":I
    :cond_2
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getAudioStreamType()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private isStreaming(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    const/4 v0, 0x0

    .line 4520
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 4528
    :cond_0
    :goto_0
    return v0

    .line 4524
    :cond_1
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4526
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isUsingProxyProject()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4251
    const-string/jumbo v1, "support_customer_proxy"

    invoke-direct {p0, v1, v0}, Landroid/media/MediaPlayer;->readHtcCustomValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4252
    const-string v0, "MediaPlayer"

    const-string v1, "It\'s a proxy project."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    const/4 v0, 0x1

    .line 4256
    :goto_0
    return v0

    .line 4255
    :cond_0
    const-string v1, "MediaPlayer"

    const-string v2, "It\'s not a proxy project."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 3616
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private populateInbandTracks()V
    .locals 7

    .prologue
    .line 2401
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    .line 2402
    .local v2, "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    .line 2403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 2404
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2403
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2407
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    .line 2411
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 2412
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v1

    .line 2414
    .local v1, "track":Landroid/media/SubtitleTrack;
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2419
    .end local v1    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2416
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2419
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2420
    return-void
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3141
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 3142
    .local v1, "mp":Landroid/media/MediaPlayer;
    if-nez v1, :cond_1

    .line 3154
    :cond_0
    :goto_0
    return-void

    .line 3146
    :cond_1
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 3148
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 3150
    :cond_2
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 3151
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3152
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private readHtcCustomValue(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v3, 0x0

    .line 4230
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    .line 4232
    .local v1, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 4234
    :try_start_0
    const-string v4, "Android_Multimedia"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 4235
    .local v2, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v2, :cond_0

    .line 4236
    invoke-interface {v2, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 4243
    .end local v2    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    :goto_0
    return v3

    .line 4238
    :catch_0
    move-exception v0

    .line 4239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private scanInternalSubtitleTracks()V
    .locals 2

    .prologue
    .line 2388
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_0

    .line 2389
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setSubtitleAnchor in MediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    .line 2393
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    .line 2395
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_1

    .line 2396
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    .line 2398
    :cond_1
    return-void
.end method

.method private selectOrDeselectInbandTrack(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2783
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2785
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2786
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2787
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2788
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2793
    return-void

    .line 2786
    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    .line 2790
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private selectOrDeselectLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 4646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4647
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4649
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4650
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4651
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4652
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4657
    return-void

    .line 4654
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 2733
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    .line 2735
    const/4 v2, 0x0

    .line 2737
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/util/Pair;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2743
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/media/SubtitleTrack;

    .line 2744
    .local v4, "track":Landroid/media/SubtitleTrack;
    if-nez v4, :cond_1

    .line 2746
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, p2}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 2778
    .end local v4    # "track":Landroid/media/SubtitleTrack;
    :cond_0
    :goto_0
    return-void

    .line 2738
    :catch_0
    move-exception v1

    .line 2740
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0

    .line 2750
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "track":Landroid/media/SubtitleTrack;
    :cond_1
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v6, :cond_0

    .line 2754
    if-nez p2, :cond_3

    .line 2756
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v6}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v6

    if-ne v6, v4, :cond_2

    .line 2757
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_0

    .line 2759
    :cond_2
    const-string v6, "MediaPlayer"

    const-string/jumbo v7, "trying to deselect track that was not selected"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2765
    :cond_3
    invoke-virtual {v4}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v6

    if-ne v6, v7, :cond_5

    .line 2766
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result v5

    .line 2767
    .local v5, "ttIndex":I
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v7

    .line 2768
    if-ltz v5, :cond_4

    :try_start_1
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 2769
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2770
    .local v3, "p2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v6, :cond_4

    .line 2772
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 2775
    .end local v3    # "p2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2777
    .end local v5    # "ttIndex":I
    :cond_5
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v6, v4}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_0

    .line 2775
    .restart local v5    # "ttIndex":I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1139
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, "scheme":Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1141
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1161
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1163
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1164
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1165
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1166
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1170
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 1142
    :cond_1
    if-eqz v3, :cond_0

    .line 1144
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Landroid/media/MediaPlayer;->getCallingProcess(Z)V

    .line 1153
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2, p3}, Landroid/media/MediaPlayer;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1168
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "setDataSource failed."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private setDataSourceAndExtraHeaders(Ljava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4475
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 4476
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4478
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_2

    if-eqz v1, :cond_2

    .line 4479
    iget-object v8, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4480
    .local v5, "resolver":Landroid/content/ContentResolver;
    if-eqz v5, :cond_1

    .line 4485
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 4487
    .local v6, "uri":Landroid/net/Uri;
    invoke-direct {p0, v5, v6, v1}, Landroid/media/MediaPlayer;->addExtraHeaders(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V

    .line 4490
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v8

    new-array v4, v8, [Ljava/lang/String;

    .line 4491
    .local v4, "keys":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 4493
    .local v7, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 4494
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4495
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v2

    .line 4496
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v7, v2

    .line 4497
    add-int/lit8 v2, v2, 0x1

    .line 4498
    goto :goto_0

    .line 4500
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v8, "MediaPlayer"

    const-string/jumbo v9, "setDataSourceAndExtraHeaders"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 4512
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "keys":[Ljava/lang/String;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":[Ljava/lang/String;
    :goto_1
    return-void

    .line 4503
    .restart local v5    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const-string v8, "MediaPlayer"

    const-string/jumbo v9, "setDataSourceAndExtraHeaders FAILED, CAN NOT GET ContentResolver, CAN NOT ADD HEADERS !"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4505
    invoke-direct {p0, p1, v10, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 4508
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    const-string v8, "MediaPlayer"

    const-string/jumbo v9, "setDataSourceAndExtraHeaders FAILED, CAN NOT GET Context OR headers, CAN NOT ADD HEADERS !"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4510
    invoke-direct {p0, p1, v10, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method private native setParameter(ILandroid/os/Parcel;)Z
.end method

.method private declared-synchronized setSubtitleAnchor()V
    .locals 5

    .prologue
    .line 2248
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_0

    .line 2249
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SetSubtitleAnchorThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2250
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2251
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2252
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$1;

    invoke-direct {v3, p0, v2}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2271
    :try_start_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2277
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "thread":Landroid/os/HandlerThread;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2272
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "thread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v0

    .line 2273
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 2274
    const-string v3, "MediaPlayer"

    const-string v4, "failed to join SetSubtitleAnchorThread"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2248
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z

    .prologue
    .line 1385
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1386
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1387
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1392
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1393
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1394
    return-void

    .line 1388
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1400
    :cond_0
    return-void

    .line 1398
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2337
    move-object v1, p1

    .line 2338
    .local v1, "fIs":Ljava/io/InputStream;
    move-object v0, p2

    .line 2342
    .local v0, "fFormat":Landroid/media/MediaFormat;
    iget-object v5, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v5

    .line 2343
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2344
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2347
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "SubtitleReadThread"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2349
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 2350
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2351
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Landroid/media/MediaPlayer$3;

    invoke-direct {v4, p0, v1, v0, v3}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2385
    return-void

    .line 2344
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2474
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 2475
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2476
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    :cond_1
    :goto_0
    return-void

    .line 2480
    :cond_2
    const/4 v0, 0x0

    .line 2482
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2483
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "r"

    invoke-virtual {v1, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2484
    if-nez v0, :cond_3

    .line 2492
    if-eqz v0, :cond_1

    .line 2493
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2487
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2492
    if-eqz v0, :cond_1

    .line 2493
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2489
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    .line 2492
    if-eqz v0, :cond_1

    .line 2493
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2490
    :catch_1
    move-exception v3

    .line 2492
    if-eqz v0, :cond_1

    .line 2493
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2492
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 2493
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    throw v3
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2540
    invoke-static/range {p6 .. p6}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2541
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Illegal mimeType for timed text source: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2546
    :cond_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 2552
    .local v14, "fd2":Ljava/io/FileDescriptor;
    new-instance v13, Landroid/media/MediaFormat;

    invoke-direct {v13}, Landroid/media/MediaFormat;-><init>()V

    .line 2553
    .local v13, "fFormat":Landroid/media/MediaFormat;
    const-string/jumbo v3, "mime"

    move-object/from16 v0, p6

    invoke-virtual {v13, v3, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    const-string/jumbo v3, "is-timed-text"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2557
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_1

    .line 2558
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    .line 2561
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2563
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 2564
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SRTRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v2, v0}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2566
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v10

    .line 2567
    .local v10, "track":Landroid/media/SubtitleTrack;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    .line 2568
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2569
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2571
    move-object v5, v14

    .line 2572
    .local v5, "fd3":Ljava/io/FileDescriptor;
    move-wide/from16 v6, p2

    .line 2573
    .local v6, "offset2":J
    move-wide/from16 v8, p4

    .line 2574
    .local v8, "length2":J
    new-instance v11, Landroid/os/HandlerThread;

    const-string v3, "TimedTextReadThread"

    const/16 v4, 0x9

    invoke-direct {v11, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2577
    .local v11, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 2578
    new-instance v15, Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2579
    .local v15, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$4;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    invoke-virtual {v15, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2621
    return-void

    .line 2547
    .end local v5    # "fd3":Ljava/io/FileDescriptor;
    .end local v6    # "offset2":J
    .end local v8    # "length2":J
    .end local v10    # "track":Landroid/media/SubtitleTrack;
    .end local v11    # "thread":Landroid/os/HandlerThread;
    .end local v13    # "fFormat":Landroid/media/MediaFormat;
    .end local v14    # "fd2":Ljava/io/FileDescriptor;
    .end local v15    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v12

    .line 2548
    .local v12, "ex":Landroid/system/ErrnoException;
    const-string v3, "MediaPlayer"

    invoke-virtual {v12}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2549
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2569
    .end local v12    # "ex":Landroid/system/ErrnoException;
    .restart local v10    # "track":Landroid/media/SubtitleTrack;
    .restart local v13    # "fFormat":Landroid/media/MediaFormat;
    .restart local v14    # "fd2":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2517
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 2518
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2440
    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2442
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2445
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2446
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2447
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2448
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 2449
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2450
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 2455
    return-void

    .line 2453
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public native attachAuxEffect(I)V
.end method

.method public deselectLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 4642
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->selectOrDeselectLanguage(Ljava/lang/String;)V

    .line 4643
    return-void
.end method

.method public deselectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2727
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2728
    return-void
.end method

.method public easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .locals 4
    .param p1, "rate"    # F
    .param p2, "audioMode"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1499
    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    .line 1500
    .local v1, "params":Landroid/media/PlaybackParams;
    invoke-virtual {v1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 1501
    packed-switch p2, :pswitch_data_0

    .line 1513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio playback mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1503
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 1516
    :goto_0
    return-object v1

    .line 1506
    :pswitch_1
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 1510
    :pswitch_2
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 1501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 2851
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .locals 1

    .prologue
    .line 2884
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-nez v0, :cond_0

    .line 2885
    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 2887
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4
    .param p1, "update_only"    # Z
    .param p2, "apply_filter"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1637
    .local v1, "reply":Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1639
    .local v0, "data":Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1650
    .end local v0    # "data":Landroid/media/Metadata;
    :cond_0
    :goto_0
    return-object v0

    .line 1646
    .restart local v0    # "data":Landroid/media/Metadata;
    :cond_1
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1648
    goto :goto_0
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public getSelectedTrack(I)I
    .locals 8
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2641
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    if-eq p1, v6, :cond_0

    const/4 v6, 0x3

    if-ne p1, v6, :cond_3

    .line 2644
    :cond_0
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v6}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v5

    .line 2645
    .local v5, "subtitleTrack":Landroid/media/SubtitleTrack;
    if-eqz v5, :cond_3

    .line 2646
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v7

    .line 2647
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 2648
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2649
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v6, v5, :cond_1

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 2650
    monitor-exit v7

    .line 2676
    .end local v0    # "i":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :goto_1
    return v0

    .line 2647
    .restart local v0    # "i":I
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .restart local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2653
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2657
    .end local v0    # "i":I
    .end local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2658
    .local v4, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2660
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_1
    const-string v6, "android.media.IMediaPlayer"

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2661
    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2662
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2663
    invoke-virtual {p0, v4, v3}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2664
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2665
    .local v1, "inbandTrackIndex":I
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2666
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    :try_start_2
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 2667
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2668
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_4

    .line 2669
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2675
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 2653
    .end local v1    # "inbandTrackIndex":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "request":Landroid/os/Parcel;
    .restart local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 2666
    .end local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    .restart local v1    # "inbandTrackIndex":I
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .restart local v3    # "reply":Landroid/os/Parcel;
    .restart local v4    # "request":Landroid/os/Parcel;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2672
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_5
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2673
    const/4 v0, -0x1

    .line 2675
    .end local v0    # "i":I
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 2672
    .restart local v0    # "i":I
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2675
    .end local v0    # "i":I
    .end local v1    # "inbandTrackIndex":I
    :catchall_2
    move-exception v6

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v6
.end method

.method public native getSyncParams()Landroid/media/SyncParams;
.end method

.method public getTimestamp()Landroid/media/MediaTimestamp;
    .locals 7

    .prologue
    .line 1594
    :try_start_0
    new-instance v1, Landroid/media/MediaTimestamp;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v6

    :goto_0
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaTimestamp;-><init>(JJF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1599
    :goto_1
    return-object v1

    .line 1594
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1598
    :catch_0
    move-exception v0

    .line 1599
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2161
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v4

    .line 2163
    .local v4, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v6

    .line 2164
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v0, v5, [Landroid/media/MediaPlayer$TrackInfo;

    .line 2165
    .local v0, "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 2166
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2167
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 2169
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    aput-object v5, v0, v1

    .line 2165
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2171
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/media/SubtitleTrack;

    .line 2172
    .local v3, "track":Landroid/media/SubtitleTrack;
    new-instance v5, Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v7

    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/media/MediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v5, v0, v1

    goto :goto_1

    .line 2176
    .end local v0    # "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2175
    .restart local v0    # "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    .restart local v1    # "i":I
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 743
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 744
    .local v0, "retcode":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 745
    if-eqz v0, :cond_0

    .line 746
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_0
    return-void
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 724
    .local v0, "parcel":Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 725
    return-object v0
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .locals 4
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .prologue
    .line 2301
    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v2, :cond_0

    .line 2303
    :try_start_0
    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2306
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2308
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    .line 2309
    if-nez p1, :cond_2

    .line 2331
    :cond_1
    :goto_1
    return-void

    .line 2313
    :cond_2
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3

    .line 2314
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2315
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v2, p1, :cond_3

    .line 2317
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2321
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2323
    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v2, :cond_1

    .line 2325
    :try_start_2
    iget v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2328
    :goto_2
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    invoke-virtual {p0, v2}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    goto :goto_1

    .line 2321
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2326
    .restart local v0    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 2304
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1320
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1321
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1322
    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1235
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_prepare()V

    .line 1236
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    .line 1237
    return-void
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1739
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "release() in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1741
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1742
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1743
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1744
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1745
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1746
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1747
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1748
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1749
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 1750
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 1752
    iput-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 1754
    :cond_0
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 1756
    iput-object v2, p0, Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;

    .line 1758
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1759
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "release() out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1770
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "reset() in"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 1772
    iget-object v3, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v3

    .line 1773
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1775
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1776
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1779
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    iget-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1780
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1781
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v2, :cond_1

    .line 1782
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v2}, Landroid/media/SubtitleController;->reset()V

    .line 1784
    :cond_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v2, :cond_2

    .line 1785
    iget-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 1786
    iput-object v4, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 1789
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1790
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 1792
    iget-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_3

    .line 1793
    iget-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1796
    :cond_3
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3

    .line 1797
    :try_start_3
    iget-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1798
    iget-object v2, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 1799
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1800
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "reset() out"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    return-void

    .line 1780
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1799
    .restart local v0    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2709
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2710
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1840
    if-nez p1, :cond_0

    .line 1841
    const-string v0, "Cannot set AudioAttributes to null"

    .line 1842
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot set AudioAttributes to null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1844
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    iput v2, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 1845
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mBypassInterruptionPolicy:Z

    .line 1847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1848
    .local v1, "pattributes":Landroid/os/Parcel;
    invoke-virtual {p1, v1, v3}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1849
    const/16 v2, 0x578

    invoke-direct {p0, v2, v1}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    .line 1850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1851
    return-void

    .line 1845
    .end local v1    # "pattributes":Landroid/os/Parcel;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    .prologue
    .line 1815
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    .line 1816
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1817
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 1
    .param p1, "level"    # F

    .prologue
    .line 1957
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    :goto_0
    return-void

    .line 1960
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1012
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 1013
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1029
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 1030
    .local v10, "scheme":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    const-string v0, "content"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "settings"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1036
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 1038
    if-nez p2, :cond_2

    .line 1039
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to resolve default ringtone"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_2
    const/4 v7, 0x0

    .line 1045
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1046
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v9, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1047
    if-nez v7, :cond_3

    .line 1062
    if-eqz v7, :cond_0

    .line 1063
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1053
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 1054
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    :goto_1
    if-eqz v7, :cond_0

    .line 1063
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1056
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1059
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1060
    .local v6, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t open file on client side; trying server side: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1062
    if-eqz v7, :cond_5

    .line 1063
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1069
    :cond_5
    if-nez p3, :cond_6

    .line 1070
    :try_start_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .end local p3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v8, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object p3, v8

    .line 1073
    .end local v8    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1074
    .restart local v9    # "resolver":Landroid/content/ContentResolver;
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 1075
    invoke-direct {p0, v9, p2, p3}, Landroid/media/MediaPlayer;->addExtraHeaders(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1081
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    :goto_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1062
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 1063
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_7
    throw v0

    .line 1076
    .restart local v6    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 1077
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1059
    .end local v6    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    move-object v6, v0

    goto :goto_2
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .locals 0
    .param p1, "dataSource"    # Landroid/media/MediaDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1219
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Landroid/media/MediaDataSource;)V

    .line 1220
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1186
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1187
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1202
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->getCallingProcess(Z)V

    .line 1205
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1206
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1100
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isStreaming(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->setDataSourceAndExtraHeaders(Ljava/lang/String;)V

    .line 1106
    :goto_0
    return-void

    .line 1105
    :cond_0
    invoke-direct {p0, p1, v1, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1119
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1120
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1122
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1123
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 1124
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1126
    const/4 v1, 0x0

    .line 1127
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1128
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 1129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 1130
    add-int/lit8 v1, v1, 0x1

    .line 1131
    goto :goto_0

    .line 1133
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1134
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 763
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 765
    if-eqz p1, :cond_0

    .line 766
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 770
    .local v0, "surface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 771
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 772
    return-void

    .line 768
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public native setLooping(Z)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1678
    .local p1, "allow":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "block":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1684
    .local v2, "request":Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 1686
    .local v0, "capacity":I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 1687
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1690
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1692
    .local v3, "t":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1694
    .end local v3    # "t":Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1695
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1696
    .restart local v3    # "t":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1698
    .end local v3    # "t":Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public native setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 3239
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 3240
    return-void
.end method

.method public setOnClosedCaptionListener(Landroid/media/MediaPlayer$OnClosedCaptionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnClosedCaptionListener;

    .prologue
    .line 4691
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;

    .line 4692
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 3205
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 3206
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 3475
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 3476
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 3607
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 3608
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 3178
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 3179
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 3266
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 3267
    return-void
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .prologue
    .line 3352
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 3353
    return-void
.end method

.method public setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    .prologue
    .line 3392
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    .line 3393
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedTextListener;

    .prologue
    .line 3327
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 3328
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 3298
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 3299
    return-void
.end method

.method public native setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .locals 6
    .param p1, "endpoint"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2834
    const/4 v0, 0x0

    .line 2835
    .local v0, "addrString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2837
    .local v1, "port":I
    if-eqz p1, :cond_0

    .line 2838
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 2839
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 2842
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result v2

    .line 2843
    .local v2, "ret":I
    if-eqz v2, :cond_1

    .line 2844
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2846
    :cond_1
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 1375
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1376
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1377
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1380
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1382
    :cond_1
    return-void
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/SubtitleController;
    .param p2, "anchor"    # Landroid/media/SubtitleController$Anchor;

    .prologue
    .line 2238
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    .line 2239
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 2240
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 793
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 794
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 797
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 798
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 799
    return-void
.end method

.method public native setSyncParams(Landroid/media/SyncParams;)V
.end method

.method public setVideoScalingMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 842
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaling mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 846
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 847
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 849
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 850
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    return-void

    .line 854
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .prologue
    .line 1898
    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1899
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 1885
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1889
    :goto_0
    return-void

    .line 1888
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    goto :goto_0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1344
    const/4 v1, 0x0

    .line 1345
    .local v1, "washeld":Z
    iget-object v4, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_1

    .line 1346
    iget-object v4, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1347
    const/4 v1, 0x1

    .line 1348
    iget-object v4, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1350
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1353
    :cond_1
    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1354
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v4, 0x20000000

    or-int/2addr v4, p2

    const-class v5, Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1355
    iget-object v4, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1356
    if-eqz v1, :cond_2

    .line 1357
    iget-object v4, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1360
    :cond_2
    if-ne p2, v2, :cond_3

    :goto_0
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mIsPartialWake:Z

    .line 1362
    return-void

    :cond_3
    move v2, v3

    .line 1360
    goto :goto_0
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1262
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    invoke-direct {p0, v2, v2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    .line 1265
    :cond_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1266
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1268
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mIsPartialWake:Z

    if-eqz v1, :cond_1

    .line 1269
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mAudioOffload:Z

    if-nez v1, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1272
    :cond_1
    return-void

    .line 1269
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1308
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1309
    return-void
.end method
