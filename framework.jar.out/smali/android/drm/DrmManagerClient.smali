.class public Landroid/drm/DrmManagerClient;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmManagerClient$InfoHandler;,
        Landroid/drm/DrmManagerClient$EventHandler;,
        Landroid/drm/DrmManagerClient$OnErrorListener;,
        Landroid/drm/DrmManagerClient$OnEventListener;,
        Landroid/drm/DrmManagerClient$OnInfoListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROCESS_DRM_INFO:I = 0x3ea

.field private static final ACTION_REMOVE_ALL_RIGHTS:I = 0x3e9

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final INVALID_SESSION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DrmManagerClient"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

.field mEventThread:Landroid/os/HandlerThread;

.field private mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

.field mInfoThread:Landroid/os/HandlerThread;

.field private mNativeContext:J

.field private mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

.field private volatile mReleased:Z

.field private mUniqueId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "drmframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 315
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    .line 316
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createEventThreads()V

    .line 319
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->_initialize()I

    move-result v0

    iput v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 320
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method private GetCurrentUserID()J
    .locals 6

    .prologue
    .line 1104
    const-wide/16 v2, -0x1

    .line 1105
    .local v2, "userSerialNumber":J
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1106
    .local v0, "uh":Landroid/os/UserHandle;
    iget-object v4, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1107
    .local v1, "um":Landroid/os/UserManager;
    if-eqz v1, :cond_0

    .line 1109
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 1112
    :cond_0
    return-wide v2
.end method

.method private GetFileDescriptorFromProvider(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1117
    iget-object v3, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1118
    .local v0, "c":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 1121
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string/jumbo v3, "r"

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1122
    if-nez v2, :cond_0

    .line 1124
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Given uri cannot be opened by provider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :catch_0
    move-exception v1

    .line 1128
    .local v1, "fnoe":Ljava/io/FileNotFoundException;
    const-string v3, "DrmManagerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1130
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Given uri cannot be opened by provider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1126
    .end local v1    # "fnoe":Ljava/io/FileNotFoundException;
    :cond_0
    return-object v2
.end method

.method private IsSchemeContentURI(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1089
    if-nez p1, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return v1

    .line 1094
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "strScheme":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1097
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private native _acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
.end method

.method private native _canHandle(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native _checkRightsStatus(ILjava/lang/String;I)I
.end method

.method private native _checkRightsStatusWithFD(ILjava/lang/String;ILjava/io/FileDescriptor;I)I
.end method

.method private native _closeConvertSession(II)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _convertData(II[B)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;
.end method

.method private native _getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;
.end method

.method private native _getConstraintsWithFD(ILjava/lang/String;ILjava/io/FileDescriptor;I)Landroid/content/ContentValues;
.end method

.method private native _getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native _getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;
.end method

.method private native _getMetadataWithFD(ILjava/lang/String;Ljava/io/FileDescriptor;)Landroid/content/ContentValues;
.end method

.method private native _getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method private native _initialize()I
.end method

.method private native _installDrmEngine(ILjava/lang/String;)V
.end method

.method private native _openConvertSession(ILjava/lang/String;)I
.end method

.method private native _processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
.end method

.method private native _release(I)V
.end method

.method private native _removeAllRights(I)I
.end method

.method private native _removeRights(ILjava/lang/String;)I
.end method

.method private native _saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native _setListeners(ILjava/lang/Object;)V
.end method

.method static synthetic access$000(Landroid/drm/DrmManagerClient;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/drm/DrmManagerClient;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->GetFileDescriptorFromProvider(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/drm/DrmManagerClient;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->isOMAContent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/drm/DrmManagerClient;)I
    .locals 1
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 52
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    return v0
.end method

.method static synthetic access$400(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    .locals 1
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/drm/DrmInfo;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getEventType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getErrorType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_removeAllRights(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    return-object v0
.end method

.method private convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1144
    const/4 v8, 0x0

    .line 1145
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1146
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 1147
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1178
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 1151
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1152
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1154
    :cond_3
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1155
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1156
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1158
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1160
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1161
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1166
    :catch_0
    move-exception v7

    .line 1167
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1170
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1171
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1164
    :cond_6
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1165
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 1170
    if-eqz v6, :cond_1

    .line 1171
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1175
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createEventThreads()V
    .locals 2

    .prologue
    .line 1226
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-nez v0, :cond_0

    .line 1227
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.InfoHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 1228
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1229
    new-instance v0, Landroid/drm/DrmManagerClient$InfoHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$InfoHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 1231
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmManagerClient.EventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 1232
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1233
    new-instance v0, Landroid/drm/DrmManagerClient$EventHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$EventHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 1235
    :cond_0
    return-void
.end method

.method private createListeners()V
    .locals 2

    .prologue
    .line 1238
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Landroid/drm/DrmManagerClient;->_setListeners(ILjava/lang/Object;)V

    .line 1239
    return-void
.end method

.method private getErrorType(I)I
    .locals 1
    .param p1, "infoType"    # I

    .prologue
    .line 1075
    const/4 v0, -0x1

    .line 1077
    .local v0, "error":I
    packed-switch p1, :pswitch_data_0

    .line 1084
    :goto_0
    return v0

    .line 1081
    :pswitch_0
    const/16 v0, 0x7d6

    goto :goto_0

    .line 1077
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getEventType(I)I
    .locals 1
    .param p1, "infoType"    # I

    .prologue
    .line 1062
    const/4 v0, -0x1

    .line 1064
    .local v0, "eventType":I
    packed-switch p1, :pswitch_data_0

    .line 1071
    :goto_0
    return v0

    .line 1068
    :pswitch_0
    const/16 v0, 0x3ea

    goto :goto_0

    .line 1064
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isOMAContent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1243
    const-string v0, ".dm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".fl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".dcf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static notify(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 4
    .param p0, "thisReference"    # Ljava/lang/Object;
    .param p1, "uniqueId"    # I
    .param p2, "infoType"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 246
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "thisReference":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient;

    .line 248
    .local v0, "instance":Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/drm/DrmManagerClient$InfoHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 251
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient$InfoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 2
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .prologue
    .line 692
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmInfoRequest is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    return-object v0
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 2
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .prologue
    .line 713
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 714
    .local v0, "drmInfo":Landroid/drm/DrmInfo;
    if-nez v0, :cond_0

    .line 715
    const/16 v1, -0x7d0

    .line 717
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    goto :goto_0
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 659
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_2
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 644
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 856
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 857
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    .line 919
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 920
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->IsSchemeContentURI(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    const/4 v10, 0x0

    .line 928
    .local v10, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->GetFileDescriptorFromProvider(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 929
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 931
    .local v4, "fd":Ljava/io/FileDescriptor;
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 932
    .local v2, "strPath":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 933
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri transferred path should be non null or action invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    .end local v2    # "strPath":Ljava/lang/String;
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v6

    .line 948
    .local v6, "ioe":Ljava/io/IOException;
    const-string v0, "DrmManagerClient"

    const-string v1, "checkRightsStatus open FD with provider IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v10    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v7

    :cond_4
    :goto_0
    return v7

    .line 936
    .restart local v2    # "strPath":Ljava/lang/String;
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v10    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_5
    :try_start_1
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->GetCurrentUserID()J

    move-result-wide v8

    .line 937
    .local v8, "lUserID":J
    long-to-int v5, v8

    .line 939
    .local v5, "nUserID":I
    iget v1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/drm/DrmManagerClient;->_checkRightsStatusWithFD(ILjava/lang/String;ILjava/io/FileDescriptor;I)I

    move-result v7

    .line 940
    .local v7, "nStatus":I
    const-string v0, "DrmManagerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_checkRightsStatusWithFD(Uri uri) nStatus = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    if-eqz v10, :cond_4

    .line 944
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 845
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 872
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 873
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path or action is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->isOMAContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 877
    const-string v0, "DrmManagerClient"

    const-string v1, "checkRightsStatus isOMAContent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/4 v12, 0x0

    .line 880
    .local v12, "nRightStatus":I
    const/4 v8, 0x0

    .line 882
    .local v8, "is":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 883
    .local v4, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 884
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    const-string v0, "DrmManagerClient"

    const-string v1, "checkRightsStatus file.exists()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    .end local v8    # "is":Ljava/io/FileInputStream;
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    move-object v8, v9

    .line 890
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->GetCurrentUserID()J

    move-result-wide v10

    .line 892
    .local v10, "lUserID":J
    long-to-int v5, v10

    .line 894
    .local v5, "nUserID":I
    iget v1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/drm/DrmManagerClient;->_checkRightsStatusWithFD(ILjava/lang/String;ILjava/io/FileDescriptor;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    .line 898
    if-eqz v8, :cond_3

    .line 900
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 906
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "nUserID":I
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v10    # "lUserID":J
    .end local v12    # "nRightStatus":I
    :cond_3
    :goto_0
    return v12

    .line 895
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    .restart local v12    # "nRightStatus":I
    :catch_0
    move-exception v7

    .line 896
    .local v7, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v0, "DrmManagerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRightsStatus isOMAContent failed e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 898
    if-eqz v8, :cond_3

    .line 900
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 901
    :catch_1
    move-exception v0

    goto :goto_0

    .line 898
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_4

    .line 900
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 901
    :cond_4
    :goto_3
    throw v0

    .line 906
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v12    # "nRightStatus":I
    :cond_5
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v12

    goto :goto_0

    .line 901
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "nUserID":I
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "lUserID":J
    .restart local v12    # "nRightStatus":I
    :catch_2
    move-exception v0

    goto :goto_0

    .end local v5    # "nUserID":I
    .end local v6    # "file":Ljava/io/File;
    .end local v10    # "lUserID":J
    :catch_3
    move-exception v1

    goto :goto_3

    .line 898
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 895
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    move-object v8, v9

    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public closeConvertSession(I)Landroid/drm/DrmConvertedStatus;
    .locals 1
    .param p1, "convertId"    # I

    .prologue
    .line 1058
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_closeConvertSession(II)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method public convertData(I[B)Landroid/drm/DrmConvertedStatus;
    .locals 2
    .param p1, "convertId"    # I
    .param p2, "inputData"    # [B

    .prologue
    .line 1040
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 1041
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given inputData should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_convertData(II[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 329
    :cond_0
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 333
    return-void

    .line 331
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 409
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    move-result-object v3

    .line 410
    .local v3, "supportInfos":[Landroid/drm/DrmSupportInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v0, "descriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 413
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/drm/DrmSupportInfo;->getDescriprition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 417
    .local v1, "drmEngines":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    .line 520
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->IsSchemeContentURI(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    const/4 v10, 0x0

    .line 529
    .local v10, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->GetFileDescriptorFromProvider(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 530
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 532
    .local v4, "fd":Ljava/io/FileDescriptor;
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, "strPath":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 534
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri transferred path should be non null or action invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v2    # "strPath":Ljava/lang/String;
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v7

    .line 548
    .local v7, "ioe":Ljava/io/IOException;
    const-string v0, "DrmManagerClient"

    const-string v1, "getConstraints(Uri uri, int action) IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v10    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v6

    :cond_4
    :goto_0
    return-object v6

    .line 537
    .restart local v2    # "strPath":Ljava/lang/String;
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v10    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_5
    :try_start_1
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->GetCurrentUserID()J

    move-result-wide v8

    .line 538
    .local v8, "lUserID":J
    long-to-int v5, v8

    .line 540
    .local v5, "nUserID":I
    iget v1, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/drm/DrmManagerClient;->_getConstraintsWithFD(ILjava/lang/String;ILjava/io/FileDescriptor;I)Landroid/content/ContentValues;

    move-result-object v6

    .line 542
    .local v6, "cvConstraint":Landroid/content/ContentValues;
    if-eqz v10, :cond_4

    .line 544
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 18
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 431
    if-eqz p1, :cond_0

    const-string v4, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 432
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Given usage or path is invalid/null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 436
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/drm/DrmManagerClient;->isOMAContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 437
    const-string v4, "DrmManagerClient"

    const-string v5, "getConstraints isOMAContent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v10, 0x0

    .line 440
    .local v10, "cvMetaData":Landroid/content/ContentValues;
    const/4 v13, 0x0

    .line 442
    .local v13, "is":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 443
    .local v8, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 445
    const-string v4, "DrmManagerClient"

    const-string v5, "getConstraints file.exists()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .end local v13    # "is":Ljava/io/FileInputStream;
    .local v14, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    move-object v13, v14

    .line 450
    .end local v14    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/drm/DrmManagerClient;->GetCurrentUserID()J

    move-result-wide v16

    .line 451
    .local v16, "lUserID":J
    move-wide/from16 v0, v16

    long-to-int v9, v0

    .line 453
    .local v9, "nUserID":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Landroid/drm/DrmManagerClient;->_getConstraintsWithFD(ILjava/lang/String;ILjava/io/FileDescriptor;I)Landroid/content/ContentValues;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 457
    if-eqz v13, :cond_3

    .line 459
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 466
    .end local v8    # "fd":Ljava/io/FileDescriptor;
    .end local v9    # "nUserID":I
    .end local v10    # "cvMetaData":Landroid/content/ContentValues;
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "is":Ljava/io/FileInputStream;
    .end local v16    # "lUserID":J
    :cond_3
    :goto_0
    return-object v10

    .line 454
    .restart local v8    # "fd":Ljava/io/FileDescriptor;
    .restart local v10    # "cvMetaData":Landroid/content/ContentValues;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v12

    .line 455
    .local v12, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v4, "DrmManagerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConstraints isOMAContent failed e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 457
    if-eqz v13, :cond_3

    .line 459
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 460
    :catch_1
    move-exception v4

    goto :goto_0

    .line 457
    .end local v12    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v13, :cond_4

    .line 459
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 460
    :cond_4
    :goto_3
    throw v4

    .line 466
    .end local v8    # "fd":Ljava/io/FileDescriptor;
    .end local v10    # "cvMetaData":Landroid/content/ContentValues;
    .end local v13    # "is":Ljava/io/FileInputStream;
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v10

    goto :goto_0

    .line 460
    .restart local v8    # "fd":Ljava/io/FileDescriptor;
    .restart local v9    # "nUserID":I
    .restart local v10    # "cvMetaData":Landroid/content/ContentValues;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    .restart local v16    # "lUserID":J
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v9    # "nUserID":I
    .end local v11    # "file":Ljava/io/File;
    .end local v16    # "lUserID":J
    :catch_3
    move-exception v5

    goto :goto_3

    .line 457
    .end local v13    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v14    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v13, v14

    .end local v14    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 454
    .end local v13    # "is":Ljava/io/FileInputStream;
    .restart local v14    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v12

    move-object v13, v14

    .end local v14    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 748
    if-eqz p1, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 749
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Uri or the mimetype should be non null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 751
    :cond_2
    const-string v1, ""

    .line 753
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 758
    :goto_0
    invoke-virtual {p0, v1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 754
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DrmManagerClient"

    const-string v3, "Given Uri could not be found in media store"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 731
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 563
    if-eqz p1, :cond_0

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v5, p1, :cond_1

    .line 564
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Uri should be non null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 567
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->IsSchemeContentURI(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 569
    const/4 v3, 0x0

    .line 572
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->GetFileDescriptorFromProvider(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 573
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 575
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, "strPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 577
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "uri transferred path should be non null or action invalid"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "strPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 588
    .local v2, "ioe":Ljava/io/IOException;
    const-string v5, "DrmManagerClient"

    const-string v6, "getMetadata(Uri uri) IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0

    .line 580
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "strPath":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, v4, v1}, Landroid/drm/DrmManagerClient;->_getMetadataWithFD(ILjava/lang/String;Ljava/io/FileDescriptor;)Landroid/content/ContentValues;

    move-result-object v0

    .line 582
    .local v0, "cvMetadata":Landroid/content/ContentValues;
    if-eqz v3, :cond_4

    .line 584
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 478
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 479
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Given path is invalid/null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 482
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->isOMAContent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 484
    const-string v5, "DrmManagerClient"

    const-string v6, "getMetadata isOMAContent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x0

    .line 487
    .local v0, "cvMetaData":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 489
    .local v3, "is":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 490
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 492
    const-string v5, "DrmManagerClient"

    const-string v6, "getMetadata file.exists()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    move-object v3, v4

    .line 496
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, p1, v1}, Landroid/drm/DrmManagerClient;->_getMetadataWithFD(ILjava/lang/String;Ljava/io/FileDescriptor;)Landroid/content/ContentValues;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 499
    if-eqz v3, :cond_3

    .line 501
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 507
    .end local v0    # "cvMetaData":Landroid/content/ContentValues;
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "is":Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    return-object v0

    .line 497
    .restart local v0    # "cvMetaData":Landroid/content/ContentValues;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 499
    :goto_1
    if-eqz v3, :cond_3

    .line 501
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 502
    :catch_1
    move-exception v5

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_4

    .line 501
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 502
    :cond_4
    :goto_3
    throw v5

    .line 507
    .end local v0    # "cvMetaData":Landroid/content/ContentValues;
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "is":Ljava/io/FileInputStream;
    :cond_5
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, p1}, Landroid/drm/DrmManagerClient;->_getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 502
    .restart local v0    # "cvMetaData":Landroid/content/ContentValues;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v2    # "file":Ljava/io/File;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 499
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 497
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 804
    if-eqz p1, :cond_0

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v5, p1, :cond_1

    .line 805
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Given uri is not valid"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 808
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->IsSchemeContentURI(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 810
    const/4 v3, 0x0

    .line 813
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->GetFileDescriptorFromProvider(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 814
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 816
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, "strPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 818
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "uri transferred path should be non null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "strPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 830
    .local v1, "ioe":Ljava/io/IOException;
    const-string v5, "DrmManagerClient"

    const-string v6, "getOriginalMimeType open FD with provider IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_0
    return-object v2

    .line 821
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "strPath":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, v4, v0}, Landroid/drm/DrmManagerClient;->_getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, "mime":Ljava/lang/String;
    const-string v5, "DrmManagerClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOriginalMimeType(Uri uri) mime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    if-eqz v3, :cond_4

    .line 826
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 769
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 770
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Given path should be non null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 773
    :cond_1
    const/4 v4, 0x0

    .line 775
    .local v4, "mime":Ljava/lang/String;
    const/4 v2, 0x0

    .line 777
    .local v2, "is":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 778
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 780
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    move-object v2, v3

    .line 783
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    iget v5, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v5, p1, v0}, Landroid/drm/DrmManagerClient;->_getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 786
    if-eqz v2, :cond_3

    .line 788
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 793
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    :goto_0
    return-object v4

    .line 784
    :catch_0
    move-exception v5

    .line 786
    :goto_1
    if-eqz v2, :cond_3

    .line 788
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 789
    :catch_1
    move-exception v5

    goto :goto_0

    .line 786
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_4

    .line 788
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 789
    :cond_4
    :goto_3
    throw v5

    .restart local v1    # "file":Ljava/io/File;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 786
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 784
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .locals 3
    .param p1, "engineFilePath"    # Ljava/lang/String;

    .prologue
    .line 628
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given engineFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_installDrmEngine(ILjava/lang/String;)V

    .line 633
    return-void
.end method

.method public openConvertSession(Ljava/lang/String;)I
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1008
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1009
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Path or the mimeType should be non null"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1012
    :cond_1
    iget v6, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v6, p1}, Landroid/drm/DrmManagerClient;->_openConvertSession(ILjava/lang/String;)I

    move-result v2

    .line 1013
    .local v2, "nConvertSession":I
    const-string v6, "application/vnd.oma.drm.message"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "application/x-android-drm-fl"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    move v0, v3

    .line 1015
    .local v0, "bOMAContent":Z
    :goto_0
    if-eqz v0, :cond_3

    const/4 v6, -0x1

    if-eq v6, v2, :cond_3

    .line 1017
    new-instance v1, Landroid/drm/DrmInfo;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v1, v3, v6, p1}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    .line 1018
    .local v1, "drmInfo":Landroid/drm/DrmInfo;
    const-string v3, "SessionID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1019
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->GetCurrentUserID()J

    move-result-wide v4

    .line 1020
    .local v4, "userSerialNumber":J
    const-string v3, "UserID"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1021
    iget v3, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v3, v1}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    .line 1023
    .end local v1    # "drmInfo":Landroid/drm/DrmInfo;
    .end local v4    # "userSerialNumber":J
    :cond_3
    return v2

    .line 1013
    .end local v0    # "bOMAContent":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 4
    .param p1, "drmInfo"    # Landroid/drm/DrmInfo;

    .prologue
    .line 672
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 673
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given drmInfo is invalid/null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 675
    :cond_1
    const/16 v1, -0x7d0

    .line 676
    .local v1, "result":I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_2

    .line 677
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 678
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 680
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return v1
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    .line 346
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 348
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 350
    :cond_1
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 352
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 354
    :cond_2
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 355
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 356
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 357
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 358
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 359
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_release(I)V

    .line 360
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0
.end method

.method public removeAllRights()I
    .locals 4

    .prologue
    .line 989
    const/16 v1, -0x7d0

    .line 990
    .local v1, "result":I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_0

    .line 991
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 992
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 994
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return v1
.end method

.method public removeRights(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 976
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 977
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 962
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given path should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "drmRights"    # Landroid/drm/DrmRights;
    .param p2, "rightsPath"    # Ljava/lang/String;
    .param p3, "contentPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given drmRights or contentPath is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 615
    invoke-virtual {p1}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/drm/DrmUtils;->writeToFile(Ljava/lang/String;[B)V

    .line 617
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->_saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V
    .locals 1
    .param p1, "errorListener"    # Landroid/drm/DrmManagerClient$OnErrorListener;

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 397
    if-eqz p1, :cond_0

    .line 398
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :cond_0
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Landroid/drm/DrmManagerClient$OnEventListener;

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 384
    if-eqz p1, :cond_0

    .line 385
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V
    .locals 1
    .param p1, "infoListener"    # Landroid/drm/DrmManagerClient$OnInfoListener;

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 371
    if-eqz p1, :cond_0

    .line 372
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :cond_0
    monitor-exit p0

    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
