.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$MtpHandler;,
        Landroid/mtp/MtpDatabase$MediaCache;,
        Landroid/mtp/MtpDatabase$FileCache;
    }
.end annotation


# static fields
.field static final ALL_PROPERTIES:[I

.field static final AUDIO_PROPERTIES:[I

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I

.field private static final FILE_SIZE_CHECK_CRITERIA:J = 0x6400000L

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I

.field private static final MTP_PERF_CPU_ATTR:Ljava/lang/String; = "/sys/class/android_usb/android0/f_mtp/qos"

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I

.field private static bCheckStorageId:Z = false

.field private static bPEF_KERNEL_SUPPORT:Z = false

.field private static final cMEDIA_CACHE_SIZE:I = 0x5dc

.field private static final cMEDIA_CACHE_SIZE_HIGH:I = 0x1770

.field private static final cMEDIA_MEM_BUDGET_HIGH:I = 0x177000

.field private static final cMTP_MSG_SCAN:I = 0x1

.field private static cMediaCacheLimit:I = 0x0

.field private static final cTHUMB_SIZE_LIMIT:I = 0x8000

.field private static iStorageID1:I = 0x0

.field private static iStorageID2:I = 0x0

.field private static final lPathLenLimit:I = 0xfff

.field public static final mEnableDataCache:Z = true

.field private static maVolumes:[Landroid/os/storage/StorageVolume; = null

.field private static final szPhoneStorage:Ljava/lang/String; = "Phone"

.field private static final szSDCard:Ljava/lang/String; = "Card"

.field private static szStoragePath2:Ljava/lang/String;


# instance fields
.field private final bEnableScan:Z

.field private final bNewDelete:Z

.field private final bNewScan:Z

.field private final bVersionCheck:Z

.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field public final mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:J

.field private mObjectFileSize:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mScanDirectory:Ljava/lang/String;

.field private mServer:Landroid/mtp/MtpServer;

.field private mSessionActive:Z

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;

.field private msMtpHandler:Landroid/mtp/MtpDatabase$MtpHandler;

.field private final mszNotifyPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    const/16 v0, 0x5dc

    sput v0, Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I

    .line 475
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 478
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 482
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    .line 486
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v2

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 491
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v2

    const-string/jumbo v1, "parent"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 535
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 825
    sput v5, Landroid/mtp/MtpDatabase;->iStorageID1:I

    sput v5, Landroid/mtp/MtpDatabase;->iStorageID2:I

    .line 826
    const-string v0, ""

    sput-object v0, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    .line 827
    const/4 v0, 0x0

    sput-object v0, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    .line 828
    sput-boolean v3, Landroid/mtp/MtpDatabase;->bCheckStorageId:Z

    .line 1217
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 1233
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 1263
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 1301
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 1319
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    .line 1886
    sput-boolean v4, Landroid/mtp/MtpDatabase;->bPEF_KERNEL_SUPPORT:Z

    return-void

    .line 1217
    nop

    :array_0
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
    .end array-data

    .line 1233
    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    .line 1263
    :array_2
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
        0xde93
        0xde94
        0xde99
        0xde9a
        0xdc8b
        0xdc99
        0xdc8c
        0xdc87
        0xdc88
        0xde9b
        0xde9c
        0xde9d
    .end array-data

    .line 1301
    :array_3
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc48
    .end array-data

    .line 1319
    :array_4
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc48
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde93
        0xde94
        0xde99
        0xde9a
        0xdc87
        0xdc88
        0xde9b
        0xde9c
        0xde9d
        0xdc48
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "storagePath"    # Ljava/lang/String;
    .param p4, "subDirectories"    # [Ljava/lang/String;

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 444
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 448
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 453
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 455
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    .line 456
    const-string v10, "Notify:"

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mszNotifyPrefix:Ljava/lang/String;

    .line 466
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bEnableScan:Z

    .line 467
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bNewScan:Z

    .line 468
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bNewDelete:Z

    .line 469
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/mtp/MtpDatabase;->bVersionCheck:Z

    .line 538
    new-instance v10, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v10, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 559
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 561
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 562
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 564
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 565
    new-instance v10, Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v11, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v12, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/mtp/MtpDatabase$MediaCache;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    .line 566
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 567
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 568
    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 570
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 571
    if-eqz p4, :cond_2

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    move-object/from16 v0, p4

    array-length v2, v0

    .line 576
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 577
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    .line 580
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 583
    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 587
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 588
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 589
    aget-object v9, p4, v4

    .line 590
    .local v9, "path":Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aput-object v9, v10, v6

    .line 591
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 588
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 596
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v9    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 597
    .local v8, "locale":Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 598
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 599
    .local v7, "language":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "country":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 601
    if-eqz v3, :cond_4

    .line 602
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 608
    .end local v3    # "country":Ljava/lang/String;
    .end local v7    # "language":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 609
    return-void

    .line 604
    .restart local v3    # "country":Ljava/lang/String;
    .restart local v7    # "language":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private CheckStorage(II)I
    .locals 1
    .param p1, "iStorageID"    # I
    .param p2, "iParent"    # I

    .prologue
    .line 901
    const/4 v0, 0x0

    return v0
.end method

.method private GetStorageBase(I)Ljava/lang/String;
    .locals 4
    .param p1, "iStorageID"    # I

    .prologue
    .line 832
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_0

    .line 834
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 836
    .local v1, "mStorageManager":Landroid/os/storage/StorageManager;
    if-eqz v1, :cond_0

    .line 837
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    sput-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    .line 839
    .end local v1    # "mStorageManager":Landroid/os/storage/StorageManager;
    :cond_0
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_2

    .line 841
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 842
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 843
    sget-object v2, Landroid/mtp/MtpDatabase;->maVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 846
    .end local v0    # "ii":I
    :goto_1
    return-object v2

    .line 841
    .restart local v0    # "ii":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    .end local v0    # "ii":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static SetMtpCpuPerf(I)V
    .locals 0
    .param p0, "iEnable"    # I

    .prologue
    .line 1909
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 85
    sget v0, Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 85
    sput p0, Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I

    return p0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Landroid/mtp/MtpDatabase;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return p1
.end method

.method static synthetic access$400(Landroid/mtp/MtpDatabase;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;

    .prologue
    .line 85
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$402(Landroid/mtp/MtpDatabase;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$500(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method static synthetic access$600(Landroid/mtp/MtpDatabase;)Z
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;

    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    return v0
.end method

.method static synthetic access$700(Landroid/mtp/MtpDatabase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/mtp/MtpDatabase;)Landroid/media/MediaScanner;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    return-object v0
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I
    .param p5, "size"    # J
    .param p7, "modified"    # J

    .prologue
    .line 731
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->inStorageRoot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 732
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt to put file outside of storage area: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    .line 777
    :cond_1
    :goto_0
    return v2

    .line 739
    :cond_2
    if-eqz p1, :cond_4

    .line 740
    const/4 v10, 0x0

    .line 742
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "_data=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 744
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 745
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file already exists in beginSendObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    const/4 v2, -0x1

    .line 751
    if-eqz v10, :cond_1

    .line 752
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 751
    :cond_3
    if-eqz v10, :cond_4

    .line 752
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 757
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 758
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 759
    .local v13, "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v2, "format"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    const-string/jumbo v2, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    const-string/jumbo v2, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    const-string v2, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 764
    const-string v2, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 765
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/mtp/MtpDatabase;->mObjectFileSize:J

    .line 768
    :try_start_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v4, v13}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 769
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_6

    .line 770
    invoke-virtual {v12}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto/16 :goto_0

    .line 748
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "values":Landroid/content/ContentValues;
    .restart local v10    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 749
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 751
    if-eqz v10, :cond_4

    .line 752
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 751
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    .line 752
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 772
    .end local v10    # "c":Landroid/database/Cursor;
    .restart local v12    # "uri":Landroid/net/Uri;
    .restart local v13    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_3
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] beginSendObject: MediaProvider.insert fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 773
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 775
    .end local v12    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v11

    .line 776
    .restart local v11    # "e":Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in beginSendObject"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 1
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 984
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/mtp/MtpDatabase;->createObjectQueryEx(IIIZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private createObjectQueryEx(IIIZ)Landroid/database/Cursor;
    .locals 17
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "bMoreInfo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 991
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 993
    if-nez p2, :cond_4

    .line 995
    if-nez p3, :cond_2

    .line 997
    const/4 v7, 0x0

    .line 998
    .local v7, "where":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1084
    .local v8, "whereArgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1085
    if-nez v7, :cond_10

    .line 1086
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 1087
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 1105
    :cond_1
    :goto_1
    if-eqz p4, :cond_13

    .line 1106
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/mtp/MtpDatabase$MediaCache;->queryObjectInfoCache(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1109
    :goto_2
    return-object v3

    .line 1000
    .end local v7    # "where":Ljava/lang/String;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :cond_2
    const/4 v3, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 1002
    const/16 p3, 0x0

    .line 1004
    :cond_3
    const-string/jumbo v7, "parent=?"

    .line 1005
    .restart local v7    # "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .restart local v8    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 1009
    .end local v7    # "where":Ljava/lang/String;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :cond_4
    if-nez p3, :cond_5

    .line 1011
    const-string v7, "format=?"

    .line 1012
    .restart local v7    # "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .restart local v8    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 1014
    .end local v7    # "where":Ljava/lang/String;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :cond_5
    const/4 v3, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 1016
    const/16 p3, 0x0

    .line 1018
    :cond_6
    const-string v7, "format=? AND parent=?"

    .line 1019
    .restart local v7    # "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .restart local v8    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 1025
    .end local v7    # "where":Ljava/lang/String;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :cond_7
    if-nez p2, :cond_d

    .line 1027
    if-nez p3, :cond_8

    .line 1029
    const-string/jumbo v7, "storage_id=?"

    .line 1030
    .restart local v7    # "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .restart local v8    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 1032
    .end local v7    # "where":Ljava/lang/String;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    .line 1034
    .local v12, "iStorageID":I
    const/4 v3, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_9

    .line 1036
    const/16 p3, 0x0

    .line 1037
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpDatabase;->CheckStorage(II)I

    move-result v12

    .line 1039
    :cond_9
    const-string/jumbo v7, "storage_id=? AND parent=?"

    .line 1040
    .restart local v7    # "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .line 1042
    .restart local v8    # "whereArgs":[Ljava/lang/String;
    const/4 v3, 0x1

    if-eq v12, v3, :cond_a

    const/4 v3, 0x2

    if-ne v12, v3, :cond_0

    .line 1044
    :cond_a
    const-string/jumbo v7, "parent=?"

    .line 1045
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v16, v3

    .line 1047
    .local v16, "newWhereArgs":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v3, v0

    add-int/lit8 v13, v3, -0x1

    .line 1049
    .local v13, "ii":I
    const/4 v3, 0x1

    if-ne v12, v3, :cond_c

    .line 1051
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT LIKE ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1052
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "ii":I
    .local v14, "ii":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v13

    move v13, v14

    .line 1059
    .end local v14    # "ii":I
    .restart local v13    # "ii":I
    :cond_b
    :goto_3
    move-object/from16 v8, v16

    goto/16 :goto_0

    .line 1054
    :cond_c
    const/4 v3, 0x2

    if-ne v12, v3, :cond_b

    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1057
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "ii":I
    .restart local v14    # "ii":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/mtp/MtpDatabase;->szStoragePath2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v13

    move v13, v14

    .end local v14    # "ii":I
    .restart local v13    # "ii":I
    goto :goto_3

    .line 1064
    .end local v7    # "where":Ljava/lang/String;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    .end local v12    # "iStorageID":I
    .end local v13    # "ii":I
    .end local v16    # "newWhereArgs":[Ljava/lang/String;
    :cond_d
    if-nez p3, :cond_e

    .line 1066
    const-string/jumbo v7, "storage_id=? AND format=?"

    .line 1067
    .restart local v7    # "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .restart local v8    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1070
    .end local v7    # "where":Ljava/lang/String;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :cond_e
    const/4 v3, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_f

    .line 1072
    const/16 p3, 0x0

    .line 1074
    :cond_f
    const-string/jumbo v7, "storage_id=? AND format=? AND parent=?"

    .line 1075
    .restart local v7    # "where":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .restart local v8    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1089
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1092
    array-length v3, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1095
    .restart local v16    # "newWhereArgs":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    array-length v3, v8

    if-ge v11, v3, :cond_11

    .line 1096
    aget-object v3, v8, v11

    aput-object v3, v16, v11

    .line 1095
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1098
    :cond_11
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v3, v3

    if-ge v15, v3, :cond_12

    .line 1099
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v3, v3, v15

    aput-object v3, v16, v11

    .line 1098
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1101
    :cond_12
    move-object/from16 v8, v16

    goto/16 :goto_1

    .line 1109
    .end local v11    # "i":I
    .end local v15    # "j":I
    .end local v16    # "newWhereArgs":[Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v6, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_2
.end method

.method private deleteFile(I)I
    .locals 19
    .param p1, "handle"    # I

    .prologue
    .line 1755
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1756
    const/4 v9, 0x0

    .line 1757
    .local v9, "path":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1760
    .local v4, "format":I
    const/4 v2, 0x0

    .line 1762
    .local v2, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    move/from16 v0, p1

    invoke-virtual {v12, v13, v0, v14}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(Ljava/lang/String;ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v10

    .line 1763
    .local v10, "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v10, :cond_2

    .line 1766
    iget-object v9, v10, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    .line 1767
    iget v4, v10, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    .line 1768
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1773
    .local v6, "iFileSize":J
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/mtp/MtpDatabase$MediaCache;->invalid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1775
    if-eqz v9, :cond_0

    if-nez v4, :cond_3

    .line 1776
    :cond_0
    const/16 v12, 0x2002

    .line 1832
    if-eqz v2, :cond_1

    .line 1833
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .end local v6    # "iFileSize":J
    .end local v10    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    :cond_1
    :goto_0
    return v12

    .line 1770
    .restart local v10    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    :cond_2
    const/16 v12, 0x2009

    .line 1832
    if-eqz v2, :cond_1

    .line 1833
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1780
    .restart local v6    # "iFileSize":J
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    if-eqz v12, :cond_4

    .line 1781
    const/16 v12, 0x200d

    .line 1832
    if-eqz v2, :cond_1

    .line 1833
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1784
    :cond_4
    const/16 v12, 0x3001

    if-ne v4, v12, :cond_5

    .line 1786
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v12}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1787
    .local v11, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v14, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v12, v13, v11, v14, v15}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1794
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v14, v0

    invoke-static {v12, v14, v15}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    .line 1805
    .restart local v11    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v12, v13, v11, v14, v15}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .local v5, "iCountDel":I
    if-lez v5, :cond_8

    .line 1806
    const/16 v12, 0x3001

    if-eq v4, v12, :cond_6

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "/.nomedia"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    if-eqz v12, :cond_6

    .line 1809
    const/4 v12, 0x0

    :try_start_3
    const-string v13, "/"

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1810
    .local v8, "parentPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v14, "unhide"

    const/4 v15, 0x0

    invoke-interface {v12, v13, v14, v8, v15}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1815
    .end local v8    # "parentPath":Ljava/lang/String;
    :cond_6
    :goto_1
    const-wide/32 v12, 0x6400000

    cmp-long v12, v6, v12

    if-lez v12, :cond_7

    .line 1817
    :try_start_4
    const-string v12, "MtpDatabase"

    const-string v13, "[USBF] deleteFile: sending ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.MEDIA_SCANNER_FINISHED"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v12, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1820
    :cond_7
    const/16 v12, 0x2001

    .line 1832
    if-eqz v2, :cond_1

    .line 1833
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1811
    :catch_0
    move-exception v3

    .line 1812
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v12, "MtpDatabase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed to unhide/rescan for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1828
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "iCountDel":I
    .end local v6    # "iFileSize":J
    .end local v10    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    .end local v11    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 1829
    .restart local v3    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v12, "MtpDatabase"

    const-string v13, "RemoteException in deleteFile"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1830
    const/16 v12, 0x2002

    .line 1832
    if-eqz v2, :cond_1

    .line 1833
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1822
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v5    # "iCountDel":I
    .restart local v6    # "iFileSize":J
    .restart local v10    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    .restart local v11    # "uri":Landroid/net/Uri;
    :cond_8
    const/4 v12, -0x1

    if-ne v12, v5, :cond_9

    .line 1823
    :try_start_7
    const-string v12, "MtpDatabase"

    const-string v13, "[USBF] RESPONSE_PARTIAL_DELETION"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1824
    const/16 v12, 0x2012

    .line 1832
    if-eqz v2, :cond_1

    .line 1833
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1826
    :cond_9
    const/16 v12, 0x2009

    .line 1832
    if-eqz v2, :cond_1

    .line 1833
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1832
    .end local v5    # "iCountDel":I
    .end local v6    # "iFileSize":J
    .end local v10    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    .end local v11    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v12

    if-eqz v2, :cond_a

    .line 1833
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v12
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I
    .param p4, "succeeded"    # Z

    .prologue
    .line 782
    if-eqz p4, :cond_4

    .line 785
    const v4, 0xba05

    if-ne p3, v4, :cond_3

    .line 787
    move-object v2, p1

    .line 788
    .local v2, "name":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 789
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 790
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 793
    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 794
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 797
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 798
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 802
    const-string/jumbo v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v6, v3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return-void

    .line 806
    .restart local v1    # "lastSlash":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 810
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string v4, "MtpDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[USBF] endSendObject: MediaScanner.scanMtpFile+, format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    .line 812
    const-string v4, "MtpDatabase"

    const-string v5, "[USBF] endSendObject: MediaScanner.scanMtpFile-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-wide v4, p0, Landroid/mtp/MtpDatabase;->mObjectFileSize:J

    const-wide/32 v6, 0x6400000

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 816
    const-string v4, "MtpDatabase"

    const-string v5, "[USBF] endSendObject: sending ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 821
    :cond_4
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 11
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .prologue
    const/16 v7, 0x2001

    const/4 v10, 0x0

    .line 1568
    sparse-switch p1, :sswitch_data_0

    .line 1595
    const/16 v6, 0x200a

    :goto_0
    return v6

    .line 1572
    :sswitch_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1573
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1574
    .local v3, "length":I
    const/16 v6, 0xff

    if-le v3, v6, :cond_0

    .line 1575
    const/16 v3, 0xff

    .line 1577
    :cond_0
    invoke-virtual {v4, v10, v3, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1578
    aput-char v10, p3, v3

    move v6, v7

    .line 1579
    goto :goto_0

    .line 1583
    .end local v3    # "length":I
    .end local v4    # "value":Ljava/lang/String;
    :sswitch_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1585
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    .line 1586
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    .line 1587
    .local v1, "height":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1588
    .local v2, "imageSize":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v10, v6, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1589
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v10, p3, v6

    move v6, v7

    .line 1590
    goto :goto_0

    .line 1568
    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_1
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .locals 4
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    .line 1155
    const/4 v0, 0x0

    .line 1157
    .local v0, "c":Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/mtp/MtpDatabase;->createObjectQueryEx(IIIZ)Landroid/database/Cursor;

    move-result-object v0

    .line 1158
    if-eqz v0, :cond_1

    .line 1159
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1164
    if-eqz v0, :cond_0

    .line 1165
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1168
    :cond_0
    :goto_0
    return v2

    .line 1164
    :cond_1
    if-eqz v0, :cond_2

    .line 1165
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1168
    :cond_2
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1161
    :catch_0
    move-exception v1

    .line 1162
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    if-eqz v0, :cond_2

    .line 1165
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1164
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 1165
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 9
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .prologue
    const/16 v3, 0x2001

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1700
    if-nez p1, :cond_0

    .line 1702
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v7, v5, p2, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1703
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aput-char v7, p2, v4

    .line 1704
    const-wide/16 v4, 0x0

    aput-wide v4, p3, v7

    .line 1705
    const-wide/16 v4, 0x3001

    aput-wide v4, p3, v8

    .line 1725
    :goto_0
    return v3

    .line 1709
    :cond_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, p1, v6}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(Ljava/lang/String;ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v2

    .line 1710
    .local v2, "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v2, :cond_2

    .line 1711
    iget-object v1, v2, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    .line 1713
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1714
    .local v0, "lPathLen":I
    const/16 v4, 0xfff

    if-le v0, v4, :cond_1

    .line 1715
    const/16 v0, 0xfff

    .line 1716
    :cond_1
    invoke-virtual {v1, v7, v0, p2, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1717
    aput-char v7, p2, v0

    .line 1720
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    aput-wide v4, p3, v7

    .line 1721
    iget v4, v2, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    int-to-long v4, v4

    aput-wide v4, p3, v8

    goto :goto_0

    .line 1725
    .end local v0    # "lPathLen":I
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x2002

    goto :goto_0
.end method

.method private getObjectFormat(I)I
    .locals 12
    .param p1, "handle"    # I

    .prologue
    const/4 v11, -0x1

    .line 1730
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v2}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(Ljava/lang/String;ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v10

    .line 1731
    .local v10, "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v10, :cond_1

    .line 1732
    iget v0, v10, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    .line 1749
    :cond_0
    :goto_0
    return v0

    .line 1735
    :cond_1
    const/4 v8, 0x0

    .line 1737
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1739
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1740
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1748
    if-eqz v8, :cond_0

    .line 1749
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1748
    :cond_2
    if-eqz v8, :cond_3

    .line 1749
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v11

    goto :goto_0

    .line 1744
    :catch_0
    move-exception v9

    .line 1745
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1748
    if-eqz v8, :cond_4

    .line 1749
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v11

    goto :goto_0

    .line 1748
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 1749
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 10
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1677
    const/4 v0, 0x0

    .line 1678
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1679
    .local v1, "ret":Z
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, p1, v5}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(Ljava/lang/String;ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v2

    .line 1681
    .local v2, "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v2, :cond_1

    .line 1682
    iget v3, v2, Landroid/mtp/MtpDatabase$FileCache;->miStorageId:I

    aput v3, p2, v8

    .line 1683
    iget v3, v2, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    aput v3, p2, v9

    .line 1684
    const/4 v3, 0x2

    iget v4, v2, Landroid/mtp/MtpDatabase$FileCache;->miParent:I

    aput v4, p2, v3

    .line 1685
    iget-object v0, v2, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    .line 1686
    invoke-static {v0, p3}, Landroid/mtp/MtpDatabase;->nameFromPath(Ljava/lang/String;[C)V

    .line 1687
    iget-wide v4, v2, Landroid/mtp/MtpDatabase$FileCache;->miAdded:J

    aput-wide v4, p4, v8

    .line 1688
    iget-wide v4, v2, Landroid/mtp/MtpDatabase$FileCache;->miModified:J

    aput-wide v4, p4, v9

    .line 1690
    aget-wide v4, p4, v8

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1691
    aget-wide v4, p4, v9

    aput-wide v4, p4, v8

    .line 1693
    :cond_0
    const/4 v1, 0x1

    .line 1696
    :cond_1
    return v1
.end method

.method private getObjectList(III)[I
    .locals 8
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 1113
    const/4 v3, 0x0

    .line 1115
    .local v3, "sCur":Landroid/database/Cursor;
    const/4 v6, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v6}, Landroid/mtp/MtpDatabase;->createObjectQueryEx(IIIZ)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1116
    if-nez v3, :cond_2

    .line 1148
    if-eqz v3, :cond_0

    .line 1149
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v2, v5

    .line 1151
    :cond_1
    :goto_0
    return-object v2

    .line 1119
    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1121
    .local v0, "iCount":I
    if-lez v0, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1122
    new-array v2, v0, [I

    .line 1124
    .local v2, "result":[I
    invoke-static {v0}, Landroid/mtp/MtpDatabase;->SetMtpCpuPerf(I)V

    .line 1125
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1127
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v2, v1

    .line 1129
    if-nez v1, :cond_3

    if-ne p3, v7, :cond_3

    .line 1130
    aget v6, v2, v1

    invoke-virtual {p0, v6, p1, p3}, Landroid/mtp/MtpDatabase;->StartMediaScanner(III)V

    .line 1131
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 1125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1133
    :cond_4
    if-eqz p3, :cond_5

    if-eq p3, v7, :cond_5

    .line 1134
    invoke-virtual {p0, p3, p1}, Landroid/mtp/MtpDatabase;->StartMediaScanner(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    :cond_5
    if-eqz v3, :cond_1

    .line 1149
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1148
    .end local v1    # "ii":I
    .end local v2    # "result":[I
    :cond_6
    if-eqz v3, :cond_7

    .line 1149
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .end local v0    # "iCount":I
    :cond_7
    :goto_2
    move-object v2, v5

    .line 1151
    goto :goto_0

    .line 1138
    :catch_0
    move-exception v4

    .line 1140
    .local v4, "sEx":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1148
    if-eqz v3, :cond_7

    .line 1149
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1142
    .end local v4    # "sEx":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1144
    .local v4, "sEx":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "MtpDatabase"

    const-string v7, "Exception in getObjectList"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1148
    if-eqz v3, :cond_7

    .line 1149
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1148
    .end local v4    # "sEx":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_8

    .line 1149
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 6
    .param p1, "handle"    # J
    .param p3, "format"    # I
    .param p4, "property"    # J
    .param p6, "groupCode"    # I
    .param p7, "depth"    # I

    .prologue
    const/4 v4, 0x0

    .line 1450
    if-eqz p6, :cond_0

    .line 1451
    new-instance v1, Landroid/mtp/MtpPropertyList;

    const v2, 0xa807

    invoke-direct {v1, v4, v2}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 1477
    :goto_0
    return-object v1

    .line 1455
    :cond_0
    const-wide v2, 0xffffffffL

    cmp-long v1, p4, v2

    if-nez v1, :cond_3

    .line 1456
    if-nez p3, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 1458
    long-to-int v1, p1

    invoke-direct {p0, v1}, Landroid/mtp/MtpDatabase;->getObjectFormat(I)I

    move-result p3

    .line 1460
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 1461
    .local v0, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_2

    .line 1462
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v5

    .line 1463
    .local v5, "propertyList":[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 1465
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    .end local v5    # "propertyList":[I
    :cond_2
    :goto_1
    long-to-int v1, p1

    invoke-virtual {v0, v1, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v1

    goto :goto_0

    .line 1468
    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_3
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 1469
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_2

    .line 1470
    const/4 v1, 0x1

    new-array v5, v1, [I

    long-to-int v1, p4

    aput v1, v5, v4

    .line 1471
    .restart local v5    # "propertyList":[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 1473
    .restart local v0    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    long-to-int v3, p4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private getObjectReferences(I)[I
    .locals 14
    .param p1, "handle"    # I

    .prologue
    const/4 v13, 0x0

    .line 1839
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 1840
    .local v2, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1842
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1843
    if-nez v8, :cond_2

    .line 1858
    if-eqz v8, :cond_0

    .line 1859
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v12, v13

    .line 1862
    :cond_1
    :goto_0
    return-object v12

    .line 1846
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1847
    .local v9, "count":I
    if-lez v9, :cond_4

    .line 1848
    new-array v12, v9, [I

    .line 1849
    .local v12, "result":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_3

    .line 1850
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1851
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v12, v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1849
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1858
    :cond_3
    if-eqz v8, :cond_1

    .line 1859
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1858
    .end local v11    # "i":I
    .end local v12    # "result":[I
    :cond_4
    if-eqz v8, :cond_5

    .line 1859
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9    # "count":I
    :cond_5
    :goto_2
    move-object v12, v13

    .line 1862
    goto :goto_0

    .line 1855
    :catch_0
    move-exception v10

    .line 1856
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectReferences"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1858
    if-eqz v8, :cond_5

    .line 1859
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1858
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 1859
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private getPhoneDeviceId(I[C[J)I
    .locals 5
    .param p1, "handle"    # I
    .param p2, "szDeviceIdBuf"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .prologue
    const/4 v4, 0x0

    .line 1399
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1400
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1401
    .local v1, "szDevId":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, p2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1402
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    aput-char v4, p2, v2

    .line 1403
    const/16 v2, 0x2001

    return v2

    .line 1400
    .end local v1    # "szDevId":Ljava/lang/String;
    :cond_0
    const-string v1, "NA"

    goto :goto_0
.end method

.method private getStorageInfo(I[C[J)I
    .locals 10
    .param p1, "iStorageID"    # I
    .param p2, "szDeviceIdBuf"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .prologue
    const/4 v9, 0x0

    .line 1409
    const-string v5, "NA"

    .line 1411
    .local v5, "szDevId":Ljava/lang/String;
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1412
    .local v2, "mStorageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1414
    .local v0, "aVolumes":[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 1415
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 1417
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1418
    .local v3, "szCurPath":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1420
    .local v4, "szCurState":Ljava/lang/String;
    const-string/jumbo v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1422
    aget-object v6, v0, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1423
    const-string v5, "Card"

    .line 1427
    :cond_0
    :goto_1
    const-string v6, "MtpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USB] getStorageInfo: StorageId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",Path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",State="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    .end local v3    # "szCurPath":Ljava/lang/String;
    .end local v4    # "szCurState":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v9, v6, p2, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1433
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v9, p2, v6

    .line 1434
    const/16 v6, 0x2001

    return v6

    .line 1425
    .restart local v3    # "szCurPath":Ljava/lang/String;
    .restart local v4    # "szCurState":Ljava/lang/String;
    :cond_2
    const-string v5, "Phone"

    goto :goto_1

    .line 1414
    .end local v3    # "szCurPath":Ljava/lang/String;
    .end local v4    # "szCurState":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 1214
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .prologue
    .line 1438
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 1372
    sparse-switch p1, :sswitch_data_0

    .line 1391
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    .line 1378
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    .line 1382
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    .line 1387
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    .line 1389
    :sswitch_3
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_0

    .line 1372
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x380b -> :sswitch_2
        0xb901 -> :sswitch_0
        0xb902 -> :sswitch_0
        0xb903 -> :sswitch_0
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .prologue
    .line 1172
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0xb981
        0x300a
        0x300c
        0xba83
        0xba85
        0xba86
    .end array-data
.end method

.method private getThumbnail2(I)[B
    .locals 11
    .param p1, "iHandle"    # I

    .prologue
    const/4 v10, 0x1

    .line 1959
    invoke-virtual {p0, p1}, Landroid/mtp/MtpDatabase;->GetFilenamefromHandle(I)Ljava/lang/String;

    move-result-object v4

    .line 1960
    .local v4, "szPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1961
    .local v0, "acBuffer":[B
    const/16 v5, 0x1000

    new-array v3, v5, [C

    .line 1962
    .local v3, "outFilePath":[C
    const/4 v5, 0x2

    new-array v2, v5, [J

    .line 1964
    .local v2, "outFileLengthFormat":[J
    invoke-direct {p0, p1, v3, v2}, Landroid/mtp/MtpDatabase;->getObjectFilePath(I[C[J)I

    move-result v5

    const/16 v6, 0x2001

    if-ne v5, v6, :cond_0

    .line 1966
    if-eqz v4, :cond_0

    .line 1970
    const-string v5, "MtpDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[USBF] getThumbnail2: FORMAT="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v8, v2, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    aget-wide v6, v2, v10

    long-to-int v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1989
    const/4 v1, 0x0

    .line 1991
    .local v1, "mIsVideo":Z
    :goto_0
    invoke-direct {p0, v4, v1}, Landroid/mtp/MtpDatabase;->getThumbnailUtil(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 1994
    .end local v1    # "mIsVideo":Z
    :cond_0
    return-object v0

    .line 1975
    :sswitch_0
    const/4 v1, 0x0

    .line 1976
    .restart local v1    # "mIsVideo":Z
    goto :goto_0

    .line 1985
    .end local v1    # "mIsVideo":Z
    :sswitch_1
    const/4 v1, 0x1

    .line 1986
    .restart local v1    # "mIsVideo":Z
    goto :goto_0

    .line 1971
    nop

    :sswitch_data_0
    .sparse-switch
        0x300a -> :sswitch_1
        0x300b -> :sswitch_1
        0x300c -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3808 -> :sswitch_0
        0x380b -> :sswitch_0
        0xb901 -> :sswitch_1
        0xb981 -> :sswitch_1
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getThumbnailUtil(Ljava/lang/String;Z)[B
    .locals 13
    .param p1, "szPath"    # Ljava/lang/String;
    .param p2, "mIsVideo"    # Z

    .prologue
    const v12, 0x8000

    const/4 v11, 0x1

    .line 1998
    const/4 v6, 0x0

    .line 1999
    .local v6, "pBitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 2001
    .local v0, "acBuffer":[B
    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: Path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",IsVideo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    if-eqz p2, :cond_1

    .line 2003
    invoke-static {p1, v11}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2010
    :goto_0
    if-nez v6, :cond_2

    .line 2011
    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: Can\'t create mini thumbnail for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :goto_1
    if-eqz v0, :cond_0

    .line 2047
    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: thumb file Width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",ByteCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_0
    return-object v0

    .line 2006
    :cond_1
    invoke-static {p1, v11}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 2015
    :cond_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2018
    .local v5, "miniOutStream":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x4b

    .line 2021
    .local v2, "iQuality":I
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_2
    const/16 v8, 0x8

    if-ge v4, v8, :cond_3

    .line 2023
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v8, v2, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 2024
    .local v1, "bRet":Z
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    .line 2025
    .local v3, "iThumbSize":I
    if-le v3, v12, :cond_3

    .line 2027
    div-int v8, v3, v12

    add-int/lit8 v8, v8, 0x1

    div-int/2addr v2, v8

    .line 2028
    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: new Quality="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const/16 v8, 0xa

    if-ge v2, v8, :cond_4

    .line 2036
    .end local v1    # "bRet":Z
    .end local v3    # "iThumbSize":I
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2039
    :try_start_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2040
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 2031
    .restart local v1    # "bRet":Z
    .restart local v3    # "iThumbSize":I
    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2021
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2041
    .end local v1    # "bRet":Z
    .end local v3    # "iThumbSize":I
    :catch_0
    move-exception v7

    .line 2042
    .local v7, "sEx":Ljava/io/IOException;
    const-string v8, "MtpDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getThumbnailUtil: got exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private inStorageRoot(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 715
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "canonical":Ljava/lang/String;
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 718
    .local v3, "root":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 719
    const/4 v4, 0x1

    .line 725
    .end local v0    # "canonical":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "root":Ljava/lang/String;
    :goto_0
    return v4

    .line 722
    :catch_0
    move-exception v4

    .line 725
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 697
    :cond_0
    :goto_0
    return v0

    .line 684
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 686
    :cond_2
    const/4 v0, 0x0

    .line 687
    .local v0, "allowed":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 688
    .local v2, "pathLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    .line 689
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 690
    .local v3, "subdir":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 691
    .local v4, "subdirLength":I
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 694
    const/4 v0, 0x1

    .line 688
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 646
    const-string v10, "device-properties"

    .line 647
    .local v10, "devicePropertiesName":Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 648
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 650
    .local v9, "databaseFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 656
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_4

    .line 658
    const-string/jumbo v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 660
    if-eqz v8, :cond_4

    .line 661
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 662
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 663
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 664
    .local v12, "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 665
    .local v13, "value":Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 670
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 671
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 676
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 678
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 667
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "c":Landroid/database/Cursor;
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 673
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 673
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 703
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v1

    .line 704
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 705
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 706
    const/4 v1, 0x1

    goto :goto_0

    .line 704
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static nameFromPath(Ljava/lang/String;[C)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "outName"    # [C

    .prologue
    const/4 v3, 0x0

    .line 1665
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1666
    .local v1, "lastSlash":I
    if-ltz v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 1667
    .local v2, "start":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1668
    .local v0, "end":I
    sub-int v4, v0, v2

    const/16 v5, 0xff

    if-le v4, v5, :cond_0

    .line 1669
    add-int/lit16 v0, v2, 0xff

    .line 1671
    :cond_0
    invoke-virtual {p0, v2, v0, p1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1672
    sub-int v4, v0, v2

    aput-char v3, p1, v4

    .line 1673
    return-void

    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_1
    move v2, v3

    .line 1666
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 16
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 1482
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0, v3}, Landroid/mtp/MtpDatabase$MediaCache;->queryFilepathById(Ljava/lang/String;ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 1484
    .local v12, "path":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 1485
    const/16 v1, 0x2009

    .line 1553
    :goto_0
    return v1

    .line 1489
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1490
    const/16 v1, 0x200d

    goto :goto_0

    .line 1494
    :cond_1
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1495
    .local v11, "oldFile":Ljava/io/File;
    const/16 v1, 0x2f

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1496
    .local v8, "lastSlash":I
    const/4 v1, 0x1

    if-gt v8, v1, :cond_2

    .line 1497
    const/16 v1, 0x2002

    goto :goto_0

    .line 1499
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1500
    .local v10, "newPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1501
    .local v9, "newFile":Ljava/io/File;
    invoke-virtual {v11, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    .line 1502
    .local v13, "success":Z
    if-nez v13, :cond_3

    .line 1503
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/16 v1, 0x2002

    goto :goto_0

    .line 1508
    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1509
    .local v4, "values":Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {v4, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const/4 v14, 0x0

    .line 1511
    .local v14, "updated":I
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 1515
    .local v6, "whereArgs":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v5, "_id=?"

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1516
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/mtp/MtpDatabase$MediaCache;->invalid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1520
    :goto_1
    if-nez v14, :cond_4

    .line 1521
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {v9, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1524
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 1517
    :catch_0
    move-exception v7

    .line 1518
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1526
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1527
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    invoke-virtual {v1}, Landroid/mtp/MtpDatabase$MediaCache;->reset()V

    .line 1531
    :cond_5
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1533
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "."

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1536
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "unhide"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v10, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1553
    :cond_6
    :goto_2
    const/16 v1, 0x2001

    goto/16 :goto_0

    .line 1537
    :catch_1
    move-exception v7

    .line 1538
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1543
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_7
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1546
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "unhide"

    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    invoke-interface {v1, v2, v3, v5, v15}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1547
    :catch_2
    move-exception v7

    .line 1548
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sessionEnded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2062
    const-string v0, "MtpDatabase"

    const-string/jumbo v1, "sessionEnded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2065
    iput-boolean v3, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 2067
    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2068
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBF] Scanned Stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/mtp/MtpDatabase;->StartMediaScannerNew(Ljava/lang/String;I)V

    .line 2071
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mScanDirectory:Ljava/lang/String;

    .line 2073
    :cond_1
    const-string v0, "MtpDatabase"

    const-string v1, "[USBF] sessionEnded:MediaCache.reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    invoke-virtual {v0}, Landroid/mtp/MtpDatabase$MediaCache;->reset()V

    .line 2075
    iput-boolean v3, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 2076
    return-void
.end method

.method private sessionStarted()V
    .locals 2

    .prologue
    .line 2056
    const-string v0, "MtpDatabase"

    const-string/jumbo v1, "sessionStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 2058
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mSessionActive:Z

    .line 2059
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 6
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1600
    sparse-switch p1, :sswitch_data_0

    .line 1653
    const/16 v3, 0x200a

    :goto_0
    return v3

    .line 1604
    :sswitch_0
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1605
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1606
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2001

    goto :goto_0

    :cond_0
    const/16 v3, 0x2002

    goto :goto_0

    .line 1610
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :sswitch_1
    const-string v3, "MtpDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceProperty: DEVICE_PROPERTY_VENDOR_HSM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const-wide/16 v4, 0x11

    cmp-long v3, p2, v4

    if-nez v3, :cond_1

    .line 1614
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.START_NEROSYNCTOOL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1627
    .local v1, "sEnDebugIntent":Landroid/content/Intent;
    :goto_1
    const-string v3, "Enable"

    long-to-int v4, p2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1628
    const-wide/16 v4, 0x40

    cmp-long v3, p2, v4

    if-ltz v3, :cond_5

    const-wide/16 v4, 0x60

    cmp-long v3, p2, v4

    if-gez v3, :cond_5

    .line 1630
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1632
    :try_start_0
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :goto_2
    const/16 v3, 0x2001

    goto :goto_0

    .line 1615
    .end local v1    # "sEnDebugIntent":Landroid/content/Intent;
    :cond_1
    const-wide/16 v4, 0x20

    cmp-long v3, p2, v4

    if-ltz v3, :cond_2

    const-wide/16 v4, 0x40

    cmp-long v3, p2, v4

    if-gez v3, :cond_2

    .line 1616
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.HSM_Notify"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "sEnDebugIntent":Landroid/content/Intent;
    goto :goto_1

    .line 1617
    .end local v1    # "sEnDebugIntent":Landroid/content/Intent;
    :cond_2
    const-wide/16 v4, 0x40

    cmp-long v3, p2, v4

    if-ltz v3, :cond_3

    const-wide/16 v4, 0x60

    cmp-long v3, p2, v4

    if-gez v3, :cond_3

    .line 1619
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1620
    .restart local v1    # "sEnDebugIntent":Landroid/content/Intent;
    const-string v3, "com.nero.android.neroconnect.INIT_SERVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1622
    .end local v1    # "sEnDebugIntent":Landroid/content/Intent;
    :cond_3
    const-wide/16 v4, 0x60

    cmp-long v3, p2, v4

    if-ltz v3, :cond_4

    const-wide/16 v4, 0x70

    cmp-long v3, p2, v4

    if-gez v3, :cond_4

    .line 1623
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.usb.HOST_NET_STATUS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "sEnDebugIntent":Landroid/content/Intent;
    goto :goto_1

    .line 1625
    .end local v1    # "sEnDebugIntent":Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.action.usb.automount"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "sEnDebugIntent":Landroid/content/Intent;
    goto :goto_1

    .line 1633
    :catch_0
    move-exception v2

    .line 1634
    .local v2, "sEx":Landroid/content/ActivityNotFoundException;
    const-string v3, "MtpDatabase"

    const-string v4, "Unable to start Activity"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1641
    .end local v2    # "sEx":Landroid/content/ActivityNotFoundException;
    :cond_5
    :try_start_1
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.permission.APP_MEDIA"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1645
    :catch_1
    move-exception v2

    .line 1646
    .local v2, "sEx":Ljava/lang/IllegalStateException;
    const-string v3, "MtpDatabase"

    const-string v4, "get IllegalStateException before boot completed, do nothing except no one need this intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1600
    nop

    :sswitch_data_0
    .sparse-switch
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
        0xd601 -> :sswitch_1
    .end sparse-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1558
    packed-switch p2, :pswitch_data_0

    .line 1563
    const v0, 0xa80a

    :goto_0
    return v0

    .line 1560
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1558
    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 10
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    .prologue
    .line 1866
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1867
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v8, p1

    invoke-static {v6, v8, v9}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1868
    .local v3, "uri":Landroid/net/Uri;
    array-length v0, p2

    .line 1869
    .local v0, "count":I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 1870
    .local v5, "valuesList":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1871
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1872
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1873
    aput-object v4, v5, v2

    .line 1870
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1876
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    invoke-interface {v6, v7, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_1

    .line 1877
    const/16 v6, 0x2001

    .line 1882
    :goto_1
    return v6

    .line 1879
    :catch_0
    move-exception v1

    .line 1880
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1882
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v6, 0x2002

    goto :goto_1
.end method


# virtual methods
.method public GetFilenamefromHandle(I)Ljava/lang/String;
    .locals 4
    .param p1, "iHandle"    # I

    .prologue
    .line 906
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, v3}, Landroid/mtp/MtpDatabase$MediaCache;->queryFilepathById(Ljava/lang/String;ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, "szPath":Ljava/lang/String;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[USBF] GetFilenamefromHandle: Path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Handle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-object v0
.end method

.method public StartMediaScanner(II)V
    .locals 0
    .param p1, "iHandle"    # I
    .param p2, "storageID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p0, p1, p2, p1}, Landroid/mtp/MtpDatabase;->StartMediaScanner(III)V

    .line 914
    return-void
.end method

.method public StartMediaScanner(III)V
    .locals 5
    .param p1, "iHandle"    # I
    .param p2, "storageID"    # I
    .param p3, "iParent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 918
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USBF] StartMediaScanner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    if-nez p3, :cond_1

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-virtual {p0, p1}, Landroid/mtp/MtpDatabase;->GetFilenamefromHandle(I)Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, "szPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 928
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 930
    .local v0, "file1":Ljava/io/File;
    const/4 v2, -0x1

    if-ne p3, v2, :cond_2

    .line 933
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 935
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2, p2}, Landroid/mtp/MtpDatabase;->StartMediaScannerDir([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public StartMediaScannerDir([Ljava/lang/String;I)V
    .locals 6
    .param p1, "filelist"    # [Ljava/lang/String;
    .param p2, "storageID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 950
    const-string v1, "Notify:"

    .line 951
    .local v1, "szNotify":Ljava/lang/String;
    const/4 v0, 0x0

    .line 953
    .local v0, "BaseDirPath":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 954
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->GetStorageBase(I)Ljava/lang/String;

    move-result-object v0

    .line 956
    :cond_0
    aget-object v2, p1, v5

    if-nez v2, :cond_1

    .line 958
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: null path!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :goto_0
    return-void

    .line 961
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 962
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USBF] StartMediaScannerDir+: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    if-eqz v0, :cond_2

    aget-object v2, p1, v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 965
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: Not valid path!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 969
    :cond_2
    const-string v2, "MtpDatabase"

    const-string v3, "[USBF] StartMediaScannerDir-: skip."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public StartMediaScannerNew(Ljava/lang/String;I)V
    .locals 4
    .param p1, "szScanPath"    # Ljava/lang/String;
    .param p2, "iScanLevel"    # I

    .prologue
    .line 940
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 941
    .local v0, "sScanIntent":Landroid/content/Intent;
    const-string v1, "MTP_Path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    if-eqz p2, :cond_0

    .line 943
    const-string v1, "MTP_Level"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    :goto_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 947
    return-void

    .line 945
    :cond_0
    const-string v1, "MTP_Level"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 638
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 631
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 635
    return-void

    .line 633
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 642
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    return-void
.end method

.method public setServer(Landroid/mtp/MtpServer;)V
    .locals 4
    .param p1, "server"    # Landroid/mtp/MtpServer;

    .prologue
    .line 612
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    .line 616
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    if-eqz p1, :cond_0

    .line 623
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 626
    :cond_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    goto :goto_0
.end method
