.class public Landroid/mtp/MtpDatabase$MediaCache;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaCache"
.end annotation


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpDatabase$FileCache;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/IContentProvider;Ljava/lang/String;)V
    .locals 8
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "volume"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x400

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Landroid/mtp/MtpDatabase$MediaCache;->mMediaProvider:Landroid/content/IContentProvider;

    .line 144
    iput-object p2, p0, Landroid/mtp/MtpDatabase$MediaCache;->mVolumeName:Ljava/lang/String;

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    .line 146
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    .line 148
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 150
    .local v0, "sMemInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 151
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    div-long/2addr v2, v6

    const-wide/32 v4, 0x177000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 152
    const/16 v1, 0x1770

    # setter for: Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I
    invoke-static {v1}, Landroid/mtp/MtpDatabase;->access$002(I)I

    .line 153
    :cond_0
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TotalSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",MediaCacheLimit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I
    invoke-static {}, Landroid/mtp/MtpDatabase;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method private getFormatType(I)I
    .locals 1
    .param p1, "iFormat"    # I

    .prologue
    .line 172
    sparse-switch p1, :sswitch_data_0

    .line 189
    const/16 v0, 0x3000

    :goto_0
    return v0

    .line 178
    :sswitch_0
    const/16 v0, 0x3009

    goto :goto_0

    .line 182
    :sswitch_1
    const/16 v0, 0x300b

    goto :goto_0

    .line 187
    :sswitch_2
    const/16 v0, 0x3801

    goto :goto_0

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
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


# virtual methods
.method public invalid(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 163
    iget-object v0, p0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeFirstOccurrence(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public queryFileById(Ljava/lang/String;ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;
    .locals 26
    .param p1, "szPackageName"    # Ljava/lang/String;
    .param p2, "iHandle"    # I
    .param p3, "sUri"    # Landroid/net/Uri;

    .prologue
    .line 195
    const/4 v4, 0x0

    .line 197
    .local v4, "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    .line 198
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    check-cast v4, Landroid/mtp/MtpDatabase$FileCache;

    .line 200
    .restart local v4    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    if-nez v4, :cond_1

    .line 201
    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/mtp/MtpDatabase$MediaCache;->queryObjectInfoCache(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 203
    .local v25, "sCur":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    check-cast v4, Landroid/mtp/MtpDatabase$FileCache;

    .line 204
    .restart local v4    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v25, :cond_0

    .line 205
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 227
    .end local v25    # "sCur":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v4

    .line 209
    :cond_1
    const-string v5, "MtpDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[USBF] queryFileById.mCache:size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_2
    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/mtp/MtpDatabase$MediaCache;->queryObjectInfoCache(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 214
    .restart local v25    # "sCur":Landroid/database/Cursor;
    if-eqz v25, :cond_0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 215
    :goto_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 216
    new-instance v4, Landroid/mtp/MtpDatabase$FileCache;

    .end local v4    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v12, 0x6

    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x8

    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v17, 0x9

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xa

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0xb

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0xc

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/16 v22, 0xd

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v23, 0xe

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v24, 0xf

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v4 .. v24}, Landroid/mtp/MtpDatabase$FileCache;-><init>(IIIILjava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    .restart local v4    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    goto/16 :goto_1

    .line 222
    :cond_3
    if-eqz v25, :cond_0

    .line 223
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public queryFilepathById(Ljava/lang/String;ILandroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p1, "szPackageName"    # Ljava/lang/String;
    .param p2, "iHandle"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 391
    iget-object v0, p0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 392
    invoke-virtual/range {p0 .. p3}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(Ljava/lang/String;ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v8

    .line 394
    .local v8, "f":Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v8, :cond_1

    .line 395
    iget-object v12, v8, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    .line 420
    .end local v8    # "f":Landroid/mtp/MtpDatabase$FileCache;
    :cond_0
    :goto_0
    return-object v12

    .line 396
    .restart local v8    # "f":Landroid/mtp/MtpDatabase$FileCache;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 400
    .end local v8    # "f":Landroid/mtp/MtpDatabase$FileCache;
    :cond_2
    const/4 v10, 0x0

    .line 401
    .local v10, "sCur":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 402
    .local v12, "szPath":Ljava/lang/String;
    const/4 v9, -0x1

    .line 403
    .local v9, "iCount":I
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 406
    .local v5, "whereArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase$MediaCache;->mMediaProvider:Landroid/content/IContentProvider;

    # getter for: Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Landroid/mtp/MtpDatabase;->access$200()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 407
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 409
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 416
    :cond_3
    if-eqz v10, :cond_0

    .line 417
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 412
    :catch_0
    move-exception v11

    .line 413
    .local v11, "sEx":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    if-eqz v10, :cond_0

    .line 417
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 416
    .end local v11    # "sEx":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_4

    .line 417
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public queryObjectInfoCache(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 37
    .param p1, "szPackageName"    # Ljava/lang/String;
    .param p2, "sUri"    # Landroid/net/Uri;
    .param p3, "szSelection"    # Ljava/lang/String;
    .param p4, "aszSelectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 232
    const/16 v31, 0x0

    .line 235
    .local v31, "sCur":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    if-eqz v3, :cond_11

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase$MediaCache;->mMediaProvider:Landroid/content/IContentProvider;

    # getter for: Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Landroid/mtp/MtpDatabase;->access$100()[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v31

    .line 237
    if-eqz v31, :cond_f

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_f

    .line 238
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 239
    .local v27, "iRowId":Ljava/lang/Integer;
    new-instance v30, Ljava/util/LinkedList;

    invoke-direct/range {v30 .. v30}, Ljava/util/LinkedList;-><init>()V

    .line 241
    .local v30, "sAudioIdList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const-string v3, "MtpDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBF] queryObjectInfoCache.mCache:Count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    :goto_0
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 243
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 244
    new-instance v2, Landroid/mtp/MtpDatabase$FileCache;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v9, 0x4

    move-object/from16 v0, v31

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x5

    move-object/from16 v0, v31

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x6

    move-object/from16 v0, v31

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v12, 0x7

    move-object/from16 v0, v31

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x8

    move-object/from16 v0, v31

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/16 v15, 0x9

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xa

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0xb

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xc

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/16 v20, 0xd

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v21, 0xe

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v22, 0xf

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v2 .. v22}, Landroid/mtp/MtpDatabase$FileCache;-><init>(IIIILjava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    .line 250
    .local v2, "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    iget v3, v2, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/mtp/MtpDatabase$MediaCache;->getFormatType(I)I

    move-result v3

    const/16 v4, 0x3009

    if-ne v3, v4, :cond_1

    .line 251
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 253
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    # getter for: Landroid/mtp/MtpDatabase;->cMediaCacheLimit:I
    invoke-static {}, Landroid/mtp/MtpDatabase;->access$000()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "iRowId":Ljava/lang/Integer;
    check-cast v27, Ljava/lang/Integer;

    .line 257
    .restart local v27    # "iRowId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeFirstOccurrence(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 383
    .end local v2    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    .end local v27    # "iRowId":Ljava/lang/Integer;
    .end local v30    # "sAudioIdList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v34

    .line 384
    .local v34, "sEx":Landroid/os/RemoteException;
    const-string v3, "MtpDatabase"

    const-string v4, "RemoteException"

    move-object/from16 v0, v34

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v34    # "sEx":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-object v31

    .line 264
    .restart local v27    # "iRowId":Ljava/lang/Integer;
    .restart local v30    # "sAudioIdList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_1
    invoke-virtual/range {v30 .. v30}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 266
    new-instance v35, Ljava/util/LinkedList;

    invoke-direct/range {v35 .. v35}, Ljava/util/LinkedList;-><init>()V

    .line 268
    .local v35, "sParentIdList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    .line 271
    .local v24, "iAudioId":Ljava/lang/Integer;
    if-nez v24, :cond_8

    .line 283
    .end local v24    # "iAudioId":Ljava/lang/Integer;
    :cond_5
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 286
    const/4 v8, 0x0

    .line 287
    .local v8, "aszAudioWhereArgs":[Ljava/lang/String;
    const/16 v32, 0x0

    .line 288
    .local v32, "sCurAudio":Landroid/database/Cursor;
    const/16 v33, 0x0

    .line 290
    .local v33, "sCurGenre":Landroid/database/Cursor;
    const-string/jumbo v7, "name!= \'\' AND name NOT LIKE \'(%)\'"

    .line 291
    .local v7, "szAudioWhere":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase$MediaCache;->mVolumeName:Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "_id"

    aput-object v9, v6, v4

    const/4 v4, 0x1

    const-string/jumbo v9, "name"

    aput-object v9, v6, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v10}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v33

    .line 295
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 296
    .local v25, "iAudioParent":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN (SELECT _id FROM files WHERE parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase$MediaCache;->mVolumeName:Ljava/lang/String;

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "_id"

    aput-object v9, v6, v4

    const/4 v4, 0x1

    const-string v9, "artist"

    aput-object v9, v6, v4

    const/4 v4, 0x2

    const-string v9, "album"

    aput-object v9, v6, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v10}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v32

    .line 304
    if-eqz v32, :cond_9

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9

    .line 306
    :cond_7
    :goto_3
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 308
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 311
    .local v26, "iCurAudioId":Ljava/lang/Integer;
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/mtp/MtpDatabase$FileCache;

    .line 313
    .local v29, "sAudioFileCh":Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v29, :cond_7

    .line 315
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszArtist:Ljava/lang/String;

    .line 316
    const/4 v3, 0x2

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iput-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszAlbum:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 274
    .end local v7    # "szAudioWhere":Ljava/lang/String;
    .end local v8    # "aszAudioWhereArgs":[Ljava/lang/String;
    .end local v25    # "iAudioParent":Ljava/lang/Integer;
    .end local v26    # "iCurAudioId":Ljava/lang/Integer;
    .end local v29    # "sAudioFileCh":Landroid/mtp/MtpDatabase$FileCache;
    .end local v32    # "sCurAudio":Landroid/database/Cursor;
    .end local v33    # "sCurGenre":Landroid/database/Cursor;
    .restart local v24    # "iAudioId":Ljava/lang/Integer;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/mtp/MtpDatabase$FileCache;

    .line 275
    .restart local v29    # "sAudioFileCh":Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v29, :cond_4

    .line 277
    move-object/from16 v0, v29

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miParent:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, v29

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miParent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 279
    move-object/from16 v0, v29

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miParent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 322
    .end local v24    # "iAudioId":Ljava/lang/Integer;
    .end local v29    # "sAudioFileCh":Landroid/mtp/MtpDatabase$FileCache;
    .restart local v7    # "szAudioWhere":Ljava/lang/String;
    .restart local v8    # "aszAudioWhereArgs":[Ljava/lang/String;
    .restart local v25    # "iAudioParent":Ljava/lang/Integer;
    .restart local v32    # "sCurAudio":Landroid/database/Cursor;
    .restart local v33    # "sCurGenre":Landroid/database/Cursor;
    :cond_9
    if-eqz v32, :cond_a

    .line 323
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_a
    if-eqz v33, :cond_6

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 328
    const/16 v28, 0x0

    .local v28, "jj":I
    :goto_4
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_6

    .line 330
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 334
    .restart local v26    # "iCurAudioId":Ljava/lang/Integer;
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 335
    const/4 v3, 0x1

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 337
    .local v36, "szGenre":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_id IN (SELECT _id FROM files WHERE parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase$MediaCache;->mVolumeName:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v10, v5

    invoke-static {v4, v10, v11}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "audio_id"

    aput-object v9, v6, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v10}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v32

    .line 345
    if-eqz v32, :cond_c

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c

    .line 347
    :cond_b
    :goto_5
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 349
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/mtp/MtpDatabase$FileCache;

    .line 351
    .restart local v29    # "sAudioFileCh":Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v29, :cond_b

    .line 353
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/mtp/MtpDatabase$FileCache;->mszGenre:Ljava/lang/String;

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 359
    .end local v29    # "sAudioFileCh":Landroid/mtp/MtpDatabase$FileCache;
    :cond_c
    if-eqz v32, :cond_d

    .line 360
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_d
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    .line 328
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_4

    .line 365
    .end local v25    # "iAudioParent":Ljava/lang/Integer;
    .end local v26    # "iCurAudioId":Ljava/lang/Integer;
    .end local v28    # "jj":I
    .end local v36    # "szGenre":Ljava/lang/String;
    :cond_e
    if-eqz v33, :cond_2

    .line 366
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 372
    .end local v7    # "szAudioWhere":Ljava/lang/String;
    .end local v8    # "aszAudioWhereArgs":[Ljava/lang/String;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v27    # "iRowId":Ljava/lang/Integer;
    .end local v30    # "sAudioIdList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v32    # "sCurAudio":Landroid/database/Cursor;
    .end local v33    # "sCurGenre":Landroid/database/Cursor;
    .end local v35    # "sParentIdList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :cond_f
    if-nez v31, :cond_10

    .line 373
    const-string v3, "MtpDatabase"

    const-string v4, "[USBF] queryObjectInfoCache.mCache:Count=null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 375
    :cond_10
    const-string v3, "MtpDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBF] queryObjectInfoCache.mCache:Count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 380
    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/mtp/MtpDatabase$MediaCache;->mMediaProvider:Landroid/content/IContentProvider;

    # getter for: Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Landroid/mtp/MtpDatabase;->access$100()[Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-interface/range {v9 .. v16}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v31

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase$MediaCache;->mCache:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase$MediaCache;->mKeyList:Ljava/util/LinkedList;

    .line 160
    return-void
.end method
