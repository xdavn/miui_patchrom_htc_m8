.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    .line 104
    return-void
.end method

.method private getRemovableStorageDirectoryByFlags(I)Ljava/io/File;
    .locals 7
    .param p1, "flags"    # I

    .prologue
    .line 177
    :try_start_0
    const-string/jumbo v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 178
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 180
    .local v4, "volumeInfo":[Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 181
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 182
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_0

    .line 183
    iget v5, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    .line 184
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 192
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    .end local v1    # "i":I
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v4    # "volumeInfo":[Landroid/os/storage/VolumeInfo;
    :goto_1
    return-object v5

    .line 180
    .restart local v0    # "disk":Landroid/os/storage/DiskInfo;
    .restart local v1    # "i":I
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    .restart local v4    # "volumeInfo":[Landroid/os/storage/VolumeInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    .end local v1    # "i":I
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v4    # "volumeInfo":[Landroid/os/storage/VolumeInfo;
    :catch_0
    move-exception v3

    .line 189
    .local v3, "rex":Ljava/lang/Exception;
    const-string v5, "Environment"

    const-string v6, "Handled exception:"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v3    # "rex":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAndroidObbDirs()[Ljava/io/File;
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "cache"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "files"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalDirs()[Ljava/io/File;
    .locals 5

    .prologue
    .line 107
    iget v3, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 109
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v3, v2

    new-array v0, v3, [Ljava/io/File;

    .line 110
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 111
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v3

    aput-object v3, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPhoneStorageDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 161
    iget v2, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 163
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 164
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v2

    .line 170
    :goto_1
    return-object v2

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const-string v2, "Environment"

    const-string v3, "No EMMC found in Volume list."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v2, Ljava/io/File;

    const-string v3, "/storage/emmc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getRemovableStorageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 197
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/os/Environment$UserEnvironment;->getRemovableStorageDirectoryByFlags(I)Ljava/io/File;

    move-result-object v0

    .line 199
    .local v0, "fileRet":Ljava/io/File;
    if-nez v0, :cond_0

    .line 200
    const-string v1, "Environment"

    const-string v2, "No SD card found in Volume list."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Ljava/io/File;

    .end local v0    # "fileRet":Ljava/io/File;
    const-string v1, "/storage/ext_sd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    :cond_0
    return-object v0
.end method

.method public getUsbDeviceDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 208
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/os/Environment$UserEnvironment;->getRemovableStorageDirectoryByFlags(I)Ljava/io/File;

    move-result-object v0

    .line 210
    .local v0, "fileRet":Ljava/io/File;
    if-nez v0, :cond_0

    .line 211
    const-string v1, "Environment"

    const-string v2, "No USB otg found in Volume list."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Ljava/io/File;

    .end local v0    # "fileRet":Ljava/io/File;
    const-string v1, "/storage/usb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    :cond_0
    return-object v0
.end method
