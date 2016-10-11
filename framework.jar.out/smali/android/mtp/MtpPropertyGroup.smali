.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mPackageName:Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 5
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "volume"    # Ljava/lang/String;
    .param p5, "properties"    # [I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 81
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 82
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 84
    invoke-static {p4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 86
    array-length v1, p5

    .line 87
    .local v1, "count":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 91
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 92
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p5, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 95
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 96
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 97
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 7
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, -0x1

    .line 102
    const/4 v6, 0x0

    .line 104
    .local v6, "column":Ljava/lang/String;
    const/4 v5, -0x1

    .line 106
    .local v5, "iMetadata":I
    sparse-switch p1, :sswitch_data_0

    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, "type":I
    const-string v0, "MtpPropertyGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    if-eqz v6, :cond_0

    .line 227
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v0, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p0, p1, v3, v1}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 232
    :goto_1
    return-object v0

    .line 108
    .end local v3    # "type":I
    :sswitch_0
    const-string/jumbo v6, "storage_id"

    .line 109
    const/4 v3, 0x6

    .line 110
    .restart local v3    # "type":I
    goto :goto_0

    .line 112
    .end local v3    # "type":I
    :sswitch_1
    const-string v6, "format"

    .line 113
    const/4 v3, 0x4

    .line 114
    .restart local v3    # "type":I
    goto :goto_0

    .line 117
    .end local v3    # "type":I
    :sswitch_2
    const/4 v3, 0x4

    .line 118
    .restart local v3    # "type":I
    goto :goto_0

    .line 120
    .end local v3    # "type":I
    :sswitch_3
    const-string v6, "_size"

    .line 121
    const/16 v3, 0x8

    .line 122
    .restart local v3    # "type":I
    goto :goto_0

    .line 124
    .end local v3    # "type":I
    :sswitch_4
    const-string v6, "_data"

    .line 125
    const v3, 0xffff

    .line 126
    .restart local v3    # "type":I
    goto :goto_0

    .line 128
    .end local v3    # "type":I
    :sswitch_5
    const-string/jumbo v6, "title"

    .line 129
    const v3, 0xffff

    .line 130
    .restart local v3    # "type":I
    goto :goto_0

    .line 132
    .end local v3    # "type":I
    :sswitch_6
    const-string v6, "date_modified"

    .line 133
    const v3, 0xffff

    .line 134
    .restart local v3    # "type":I
    goto :goto_0

    .line 136
    .end local v3    # "type":I
    :sswitch_7
    const-string v6, "date_added"

    .line 137
    const v3, 0xffff

    .line 138
    .restart local v3    # "type":I
    goto :goto_0

    .line 140
    .end local v3    # "type":I
    :sswitch_8
    const-string/jumbo v6, "year"

    .line 141
    const v3, 0xffff

    .line 142
    .restart local v3    # "type":I
    goto :goto_0

    .line 144
    .end local v3    # "type":I
    :sswitch_9
    const-string/jumbo v6, "parent"

    .line 145
    const/4 v3, 0x6

    .line 146
    .restart local v3    # "type":I
    goto :goto_0

    .line 149
    .end local v3    # "type":I
    :sswitch_a
    const-string/jumbo v6, "storage_id"

    .line 150
    const/16 v3, 0xa

    .line 151
    .restart local v3    # "type":I
    goto :goto_0

    .line 153
    .end local v3    # "type":I
    :sswitch_b
    const-string v6, "duration"

    .line 154
    const/4 v3, 0x6

    .line 155
    .restart local v3    # "type":I
    goto :goto_0

    .line 157
    .end local v3    # "type":I
    :sswitch_c
    const-string/jumbo v6, "track"

    .line 158
    const/4 v3, 0x4

    .line 159
    .restart local v3    # "type":I
    goto :goto_0

    .line 161
    .end local v3    # "type":I
    :sswitch_d
    const-string v6, "_display_name"

    .line 162
    const v3, 0xffff

    .line 163
    .restart local v3    # "type":I
    goto :goto_0

    .line 165
    .end local v3    # "type":I
    :sswitch_e
    const v3, 0xffff

    .line 166
    .restart local v3    # "type":I
    goto :goto_0

    .line 168
    .end local v3    # "type":I
    :sswitch_f
    const v3, 0xffff

    .line 169
    .restart local v3    # "type":I
    goto :goto_0

    .line 171
    .end local v3    # "type":I
    :sswitch_10
    const-string v6, "album_artist"

    .line 172
    const v3, 0xffff

    .line 173
    .restart local v3    # "type":I
    goto :goto_0

    .line 176
    .end local v3    # "type":I
    :sswitch_11
    const v3, 0xffff

    .line 177
    .restart local v3    # "type":I
    goto :goto_0

    .line 179
    .end local v3    # "type":I
    :sswitch_12
    const-string v6, "composer"

    .line 180
    const v3, 0xffff

    .line 181
    .restart local v3    # "type":I
    goto :goto_0

    .line 183
    .end local v3    # "type":I
    :sswitch_13
    const-string v6, "description"

    .line 184
    const v3, 0xffff

    .line 185
    .restart local v3    # "type":I
    goto :goto_0

    .line 191
    .end local v3    # "type":I
    :sswitch_14
    const/4 v3, 0x6

    .line 192
    .restart local v3    # "type":I
    goto :goto_0

    .line 196
    .end local v3    # "type":I
    :sswitch_15
    const/4 v3, 0x4

    .line 197
    .restart local v3    # "type":I
    goto :goto_0

    .line 200
    .end local v3    # "type":I
    :sswitch_16
    const-string/jumbo v6, "width"

    .line 201
    const/4 v3, 0x6

    .line 202
    .restart local v3    # "type":I
    goto/16 :goto_0

    .line 204
    .end local v3    # "type":I
    :sswitch_17
    const-string v6, "height"

    .line 205
    const/4 v3, 0x6

    .line 206
    .restart local v3    # "type":I
    goto/16 :goto_0

    .line 208
    .end local v3    # "type":I
    :sswitch_18
    const/4 v3, 0x6

    .line 210
    .restart local v3    # "type":I
    goto/16 :goto_0

    .line 212
    .end local v3    # "type":I
    :sswitch_19
    const/4 v3, 0x6

    .line 214
    .restart local v3    # "type":I
    goto/16 :goto_0

    .line 216
    .end local v3    # "type":I
    :sswitch_1a
    const/4 v3, 0x6

    .line 218
    .restart local v3    # "type":I
    goto/16 :goto_0

    .line 229
    :cond_0
    if-le v5, v4, :cond_1

    .line 230
    new-instance v0, Landroid/mtp/MtpPropertyGroup$Property;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;IIII)V

    goto/16 :goto_1

    .line 232
    :cond_1
    new-instance v0, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-direct {v0, p0, p1, v3, v4}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto/16 :goto_1

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_a
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_e
        0xdc48 -> :sswitch_13
        0xdc4e -> :sswitch_7
        0xdc87 -> :sswitch_16
        0xdc88 -> :sswitch_17
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_c
        0xdc8c -> :sswitch_11
        0xdc96 -> :sswitch_12
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_f
        0xdc9b -> :sswitch_10
        0xdce0 -> :sswitch_d
        0xde92 -> :sswitch_15
        0xde93 -> :sswitch_14
        0xde94 -> :sswitch_15
        0xde99 -> :sswitch_14
        0xde9a -> :sswitch_14
        0xde9b -> :sswitch_18
        0xde9c -> :sswitch_19
        0xde9d -> :sswitch_1a
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private getFormatType(Ljava/lang/Long;)I
    .locals 2
    .param p1, "iFormat"    # Ljava/lang/Long;

    .prologue
    .line 333
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 334
    .local v0, "format":I
    sparse-switch v0, :sswitch_data_0

    .line 351
    const/16 v1, 0x3000

    :goto_0
    return v1

    .line 340
    :sswitch_0
    const/16 v1, 0x3009

    goto :goto_0

    .line 344
    :sswitch_1
    const/16 v1, 0x300b

    goto :goto_0

    .line 349
    :sswitch_2
    const/16 v1, 0x3801

    goto :goto_0

    .line 334
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

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, "start":I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 322
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 323
    add-int/lit8 v2, v1, 0x1

    .line 325
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 326
    .local v0, "end":I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 327
    add-int/lit16 v0, v2, 0xff

    .line 329
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 258
    const/4 v8, 0x0

    .line 260
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

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

    .line 263
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 271
    if-eqz v8, :cond_0

    .line 272
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 266
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    if-eqz v8, :cond_0

    .line 272
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 268
    :catch_0
    move-exception v9

    .line 271
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 272
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 271
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 272
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    .line 278
    const/4 v8, 0x0

    .line 280
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 281
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 284
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 293
    if-eqz v8, :cond_0

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 287
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    if-eqz v8, :cond_0

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 289
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 290
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v1, "queryGenre exception"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    if-eqz v8, :cond_2

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 293
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 300
    const/4 v8, 0x0

    .line 303
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

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

    .line 306
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    if-eqz v8, :cond_0

    .line 312
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    if-eqz v8, :cond_2

    .line 312
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 315
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 311
    if-eqz v8, :cond_2

    .line 312
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 311
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 312
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 237
    const/4 v8, 0x0

    .line 240
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

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

    .line 243
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 251
    if-eqz v8, :cond_0

    .line 252
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    if-eqz v8, :cond_0

    .line 252
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 248
    :catch_0
    move-exception v9

    .line 251
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 252
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 251
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 252
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 39
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "depth"    # I

    .prologue
    .line 357
    const/4 v3, 0x1

    move/from16 v0, p3

    if-le v0, v3, :cond_1

    .line 360
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const/4 v3, 0x0

    const v5, 0xa808

    invoke-direct {v2, v3, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 768
    :cond_0
    :goto_0
    return-object v2

    .line 363
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    const/16 v28, 0x1

    .line 367
    .local v28, "mEnableDataCache":Z
    const/4 v3, -0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_7

    .line 369
    if-eqz v28, :cond_7

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    iget-object v3, v3, Landroid/mtp/MtpDatabase;->mMediaCache:Landroid/mtp/MtpDatabase$MediaCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move/from16 v0, p1

    invoke-virtual {v3, v5, v0, v8}, Landroid/mtp/MtpDatabase$MediaCache;->queryFileById(Ljava/lang/String;ILandroid/net/Uri;)Landroid/mtp/MtpDatabase$FileCache;

    move-result-object v34

    .line 372
    .local v34, "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    if-eqz v34, :cond_7

    .line 374
    const/16 v23, 0x1

    .line 375
    .local v23, "count":I
    const/16 v20, 0x0

    .line 377
    .local v20, "bDoQuery":Z
    const-string v3, "MtpPropertyGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBF] getPropertyList.length: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v2, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v3, v3

    mul-int v3, v3, v23

    const/16 v5, 0x2001

    invoke-direct {v2, v3, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 382
    .local v2, "result":Landroid/mtp/MtpPropertyList;
    const/16 v32, 0x0

    .local v32, "propertyIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v3, v3

    move/from16 v0, v32

    if-ge v0, v3, :cond_6

    if-nez v20, :cond_6

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v31, v3, v32

    .line 384
    .local v31, "property":Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v31

    iget v4, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 387
    .local v4, "propertyCode":I
    sparse-switch v4, :sswitch_data_0

    .line 519
    const-string v3, "MtpPropertyGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled property="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/16 v20, 0x1

    .line 382
    :goto_2
    add-int/lit8 v32, v32, 0x1

    goto :goto_1

    .line 390
    :sswitch_0
    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_2

    .line 394
    :sswitch_1
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 395
    .local v37, "value":Ljava/lang/String;
    if-eqz v37, :cond_3

    .line 396
    const-string v3, "/"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    const-string v3, "MtpPropertyGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBF] PROPERTY_OBJECT_FILE_NAME: skip invalid path="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/16 v3, 0x2009

    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_2

    .line 402
    :cond_2
    invoke-static/range {v37 .. v37}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_2

    .line 404
    :cond_3
    const-string v3, "MtpPropertyGroup"

    const-string v5, "[USBF] PROPERTY_OBJECT_FILE_NAME: skip invalid path null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/16 v3, 0x2009

    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_2

    .line 410
    .end local v37    # "value":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/mtp/MtpDatabase$FileCache;->mszTitle:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 412
    .local v29, "name":Ljava/lang/String;
    if-nez v29, :cond_4

    .line 413
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 414
    if-eqz v29, :cond_4

    .line 415
    invoke-static/range {v29 .. v29}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 418
    :cond_4
    if-eqz v29, :cond_5

    .line 419
    move/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v4, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_2

    .line 421
    :cond_5
    const-string v3, "MtpPropertyGroup"

    const-string v5, "[USBF] PROPERTY_NAME: skip invalid path null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/16 v3, 0x2009

    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_2

    .line 427
    .end local v29    # "name":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, v34

    iget-wide v8, v0, Landroid/mtp/MtpDatabase$FileCache;->miModified:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 431
    :sswitch_4
    move-object/from16 v0, v34

    iget-wide v8, v0, Landroid/mtp/MtpDatabase$FileCache;->miAdded:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 435
    :sswitch_5
    move-object/from16 v0, v34

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miStorageId:I

    int-to-long v6, v3

    .line 436
    .local v6, "puid":J
    const/16 v3, 0x20

    shl-long/2addr v6, v3

    .line 437
    move/from16 v0, p1

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 438
    const/16 v5, 0xa

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .line 441
    .end local v6    # "puid":J
    :sswitch_6
    move-object/from16 v0, v31

    iget v11, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v0, v34

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    int-to-long v12, v3

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .line 444
    :sswitch_7
    move-object/from16 v0, v31

    iget v11, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v0, v34

    iget-wide v12, v0, Landroid/mtp/MtpDatabase$FileCache;->miSize:J

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .line 447
    :sswitch_8
    move-object/from16 v0, v31

    iget v11, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v0, v34

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miStorageId:I

    int-to-long v12, v3

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .line 450
    :sswitch_9
    move-object/from16 v0, v31

    iget v11, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v0, v34

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miParent:I

    int-to-long v12, v3

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .line 453
    :sswitch_a
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszAlbumArtist:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 456
    :sswitch_b
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszComposer:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 459
    :sswitch_c
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszDescription:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 462
    :sswitch_d
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszDisplayName:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 465
    :sswitch_e
    move-object/from16 v0, v31

    iget v11, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v0, v34

    iget-wide v12, v0, Landroid/mtp/MtpDatabase$FileCache;->miDuration:J

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .line 469
    :sswitch_f
    move-object/from16 v0, v34

    iget v0, v0, Landroid/mtp/MtpDatabase$FileCache;->miOriginalReleaseDate:I

    move/from16 v38, v0

    .line 470
    .local v38, "year":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "0101T000000"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 471
    .local v24, "dateTime":Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v4, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 474
    .end local v24    # "dateTime":Ljava/lang/String;
    .end local v38    # "year":I
    :sswitch_10
    const/4 v11, 0x4

    move-object/from16 v0, v34

    iget v3, v0, Landroid/mtp/MtpDatabase$FileCache;->miTrack:I

    rem-int/lit16 v3, v3, 0x3e8

    int-to-long v12, v3

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .line 481
    :sswitch_11
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszArtist:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 487
    :sswitch_12
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszAlbum:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 496
    :sswitch_13
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/mtp/MtpDatabase$FileCache;->mszGenre:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 503
    :sswitch_14
    const/4 v11, 0x6

    const-wide/16 v12, 0x0

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .line 508
    :sswitch_15
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .line 515
    :sswitch_16
    const/4 v11, 0x6

    const-wide/16 v12, 0x0

    move-object v8, v2

    move/from16 v9, p1

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_2

    .line 524
    .end local v4    # "propertyCode":I
    .end local v31    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_6
    if-eqz v20, :cond_0

    .line 532
    .end local v2    # "result":Landroid/mtp/MtpPropertyList;
    .end local v20    # "bDoQuery":Z
    .end local v23    # "count":I
    .end local v32    # "propertyIndex":I
    .end local v34    # "sFileCh":Landroid/mtp/MtpDatabase$FileCache;
    :cond_7
    if-nez p2, :cond_b

    .line 533
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    .line 535
    const/4 v12, 0x0

    .line 536
    .local v12, "where":Ljava/lang/String;
    const/4 v13, 0x0

    .line 560
    .local v13, "whereArgs":[Ljava/lang/String;
    :goto_3
    const/16 v21, 0x0

    .line 563
    .local v21, "c":Landroid/database/Cursor;
    if-gtz p3, :cond_8

    const/4 v3, -0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v3, v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_e

    .line 564
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v8 .. v15}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v21

    .line 565
    if-nez v21, :cond_e

    .line 566
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const/4 v3, 0x0

    const/16 v5, 0x2009

    invoke-direct {v2, v3, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    if-eqz v21, :cond_0

    .line 768
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 538
    .end local v12    # "where":Ljava/lang/String;
    .end local v13    # "whereArgs":[Ljava/lang/String;
    .end local v21    # "c":Landroid/database/Cursor;
    :cond_9
    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v3

    .line 539
    .restart local v13    # "whereArgs":[Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 540
    const-string/jumbo v12, "parent=?"

    .restart local v12    # "where":Ljava/lang/String;
    goto :goto_3

    .line 542
    .end local v12    # "where":Ljava/lang/String;
    :cond_a
    const-string v12, "_id=?"

    .restart local v12    # "where":Ljava/lang/String;
    goto :goto_3

    .line 546
    .end local v12    # "where":Ljava/lang/String;
    .end local v13    # "whereArgs":[Ljava/lang/String;
    :cond_b
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    .line 548
    const-string v12, "format=?"

    .line 549
    .restart local v12    # "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v3

    .restart local v13    # "whereArgs":[Ljava/lang/String;
    goto :goto_3

    .line 551
    .end local v12    # "where":Ljava/lang/String;
    .end local v13    # "whereArgs":[Ljava/lang/String;
    :cond_c
    const/4 v3, 0x2

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v3

    .line 552
    .restart local v13    # "whereArgs":[Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    .line 553
    const-string/jumbo v12, "parent=? AND format=?"

    .restart local v12    # "where":Ljava/lang/String;
    goto :goto_3

    .line 555
    .end local v12    # "where":Ljava/lang/String;
    :cond_d
    const-string v12, "_id=? AND format=?"

    .restart local v12    # "where":Ljava/lang/String;
    goto :goto_3

    .line 570
    .restart local v21    # "c":Landroid/database/Cursor;
    :cond_e
    if-nez v21, :cond_10

    const/16 v23, 0x1

    .line 571
    .restart local v23    # "count":I
    :goto_4
    :try_start_1
    new-instance v2, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v3, v3

    mul-int v3, v3, v23

    const/16 v5, 0x2001

    invoke-direct {v2, v3, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 574
    .restart local v2    # "result":Landroid/mtp/MtpPropertyList;
    const/16 v36, 0x0

    .line 575
    .local v36, "szFileName":Ljava/lang/String;
    const/16 v26, 0x0

    .line 576
    .local v26, "iFormat":Ljava/lang/Long;
    const/16 v35, 0x0

    .line 581
    .local v35, "sRetriever":Landroid/media/MediaMetadataRetriever;
    const/16 v30, 0x0

    .local v30, "objectIndex":I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v23

    if-ge v0, v1, :cond_1a

    .line 582
    if-eqz v21, :cond_f

    .line 583
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 584
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 p1, v0

    .line 588
    :cond_f
    const/16 v32, 0x0

    .restart local v32    # "propertyIndex":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v3, v3

    move/from16 v0, v32

    if-ge v0, v3, :cond_19

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v31, v3, v32

    .line 590
    .restart local v31    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v31

    iget v4, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 591
    .restart local v4    # "propertyCode":I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v22, v0

    .line 592
    .local v22, "column":I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->miMetadata:I

    move/from16 v27, v0

    .line 599
    .local v27, "iMetadata":I
    sparse-switch v4, :sswitch_data_1

    .line 739
    :goto_7
    move-object/from16 v0, v31

    iget v3, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v5, 0xffff

    if-ne v3, v5, :cond_17

    .line 740
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 588
    :goto_8
    add-int/lit8 v32, v32, 0x1

    goto :goto_6

    .line 570
    .end local v2    # "result":Landroid/mtp/MtpPropertyList;
    .end local v4    # "propertyCode":I
    .end local v22    # "column":I
    .end local v23    # "count":I
    .end local v26    # "iFormat":Ljava/lang/Long;
    .end local v27    # "iMetadata":I
    .end local v30    # "objectIndex":I
    .end local v31    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v32    # "propertyIndex":I
    .end local v35    # "sRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v36    # "szFileName":Ljava/lang/String;
    :cond_10
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v23

    goto :goto_4

    .line 602
    .restart local v2    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v4    # "propertyCode":I
    .restart local v22    # "column":I
    .restart local v23    # "count":I
    .restart local v26    # "iFormat":Ljava/lang/Long;
    .restart local v27    # "iMetadata":I
    .restart local v30    # "objectIndex":I
    .restart local v31    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v32    # "propertyIndex":I
    .restart local v35    # "sRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v36    # "szFileName":Ljava/lang/String;
    :sswitch_17
    const/16 v17, 0x4

    const-wide/16 v18, 0x0

    move-object v14, v2

    move/from16 v15, p1

    move/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 764
    .end local v2    # "result":Landroid/mtp/MtpPropertyList;
    .end local v4    # "propertyCode":I
    .end local v22    # "column":I
    .end local v23    # "count":I
    .end local v26    # "iFormat":Ljava/lang/Long;
    .end local v27    # "iMetadata":I
    .end local v30    # "objectIndex":I
    .end local v31    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v32    # "propertyIndex":I
    .end local v35    # "sRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v36    # "szFileName":Ljava/lang/String;
    :catch_0
    move-exception v25

    .line 765
    .local v25, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const/4 v3, 0x0

    const/16 v5, 0x2002

    invoke-direct {v2, v3, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 767
    if-eqz v21, :cond_0

    .line 768
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 606
    .end local v25    # "e":Landroid/os/RemoteException;
    .restart local v2    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v4    # "propertyCode":I
    .restart local v22    # "column":I
    .restart local v23    # "count":I
    .restart local v26    # "iFormat":Ljava/lang/Long;
    .restart local v27    # "iMetadata":I
    .restart local v30    # "objectIndex":I
    .restart local v31    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v32    # "propertyIndex":I
    .restart local v35    # "sRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v36    # "szFileName":Ljava/lang/String;
    :sswitch_18
    :try_start_3
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 607
    .restart local v37    # "value":Ljava/lang/String;
    if-eqz v37, :cond_13

    .line 608
    const-string v3, "/"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 610
    const-string v3, "MtpPropertyGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[USBF] PROPERTY_OBJECT_FILE_NAME: skip invalid path="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/16 v3, 0x2009

    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    .line 615
    :goto_9
    move-object/from16 v36, v37

    goto :goto_8

    .line 614
    :cond_11
    invoke-static/range {v37 .. v37}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    .line 767
    .end local v2    # "result":Landroid/mtp/MtpPropertyList;
    .end local v4    # "propertyCode":I
    .end local v22    # "column":I
    .end local v23    # "count":I
    .end local v26    # "iFormat":Ljava/lang/Long;
    .end local v27    # "iMetadata":I
    .end local v30    # "objectIndex":I
    .end local v31    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v32    # "propertyIndex":I
    .end local v35    # "sRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v36    # "szFileName":Ljava/lang/String;
    .end local v37    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v21, :cond_12

    .line 768
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v3

    .line 617
    .restart local v2    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v4    # "propertyCode":I
    .restart local v22    # "column":I
    .restart local v23    # "count":I
    .restart local v26    # "iFormat":Ljava/lang/Long;
    .restart local v27    # "iMetadata":I
    .restart local v30    # "objectIndex":I
    .restart local v31    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v32    # "propertyIndex":I
    .restart local v35    # "sRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v36    # "szFileName":Ljava/lang/String;
    .restart local v37    # "value":Ljava/lang/String;
    :cond_13
    const/16 v3, 0x2009

    :try_start_4
    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_8

    .line 622
    .end local v37    # "value":Ljava/lang/String;
    :sswitch_19
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 624
    .restart local v29    # "name":Ljava/lang/String;
    if-nez v29, :cond_14

    .line 625
    const-string/jumbo v3, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 628
    :cond_14
    if-nez v29, :cond_15

    .line 629
    const-string v3, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 630
    if-eqz v29, :cond_15

    .line 631
    invoke-static/range {v29 .. v29}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 634
    :cond_15
    if-eqz v29, :cond_16

    .line 635
    move/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v4, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 637
    :cond_16
    const/16 v3, 0x2009

    invoke-virtual {v2, v3}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_8

    .line 643
    .end local v29    # "name":Ljava/lang/String;
    :sswitch_1a
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 647
    :sswitch_1b
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 648
    .restart local v38    # "year":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "0101T000000"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 649
    .restart local v24    # "dateTime":Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v4, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 653
    .end local v24    # "dateTime":Ljava/lang/String;
    .end local v38    # "year":I
    :sswitch_1c
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 654
    .restart local v6    # "puid":J
    const/16 v3, 0x20

    shl-long/2addr v6, v3

    .line 655
    move/from16 v0, p1

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 656
    const/16 v5, 0xa

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 659
    .end local v6    # "puid":J
    :sswitch_1d
    const/16 v17, 0x4

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    move-wide/from16 v18, v0

    move-object v14, v2

    move/from16 v15, p1

    move/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 664
    :sswitch_1e
    const-string v3, ""

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 667
    :sswitch_1f
    const-string v3, ""

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 670
    :sswitch_20
    const-string v3, ""

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 683
    :sswitch_21
    const/16 v17, 0x6

    const-wide/16 v18, 0x0

    move-object v14, v2

    move/from16 v15, p1

    move/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 718
    :sswitch_22
    const/16 v17, 0x4

    const-wide/16 v18, 0x0

    move-object v14, v2

    move/from16 v15, p1

    move/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 726
    :sswitch_23
    const/16 v17, 0x6

    const-wide/16 v18, 0x0

    move-object v14, v2

    move/from16 v15, p1

    move/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 731
    :sswitch_24
    const/16 v17, 0x6

    const-wide/16 v18, 0x0

    move-object v14, v2

    move/from16 v15, p1

    move/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 735
    :sswitch_25
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    goto/16 :goto_7

    .line 741
    :cond_17
    move-object/from16 v0, v31

    iget v3, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v3, :cond_18

    .line 742
    move-object/from16 v0, v31

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object v14, v2

    move/from16 v15, p1

    move/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 744
    :cond_18
    move-object/from16 v0, v31

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object v14, v2

    move/from16 v15, p1

    move/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_8

    .line 581
    .end local v4    # "propertyCode":I
    .end local v22    # "column":I
    .end local v27    # "iMetadata":I
    .end local v31    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_19
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_5

    .line 751
    .end local v32    # "propertyIndex":I
    :cond_1a
    const/16 v36, 0x0

    .line 752
    const/16 v26, 0x0

    .line 753
    if-eqz v35, :cond_1b

    .line 756
    :try_start_5
    invoke-virtual/range {v35 .. v35}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 767
    :cond_1b
    :goto_a
    if-eqz v21, :cond_0

    .line 768
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 757
    :catch_1
    move-exception v33

    .line 759
    .local v33, "sEx":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v3, "MtpPropertyGroup"

    const-string v5, "RuntimeException"

    move-object/from16 v0, v33

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    .line 387
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_8
        0xdc02 -> :sswitch_6
        0xdc03 -> :sswitch_0
        0xdc04 -> :sswitch_7
        0xdc07 -> :sswitch_1
        0xdc09 -> :sswitch_3
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_5
        0xdc44 -> :sswitch_2
        0xdc46 -> :sswitch_11
        0xdc48 -> :sswitch_c
        0xdc4e -> :sswitch_4
        0xdc87 -> :sswitch_16
        0xdc88 -> :sswitch_16
        0xdc89 -> :sswitch_e
        0xdc8b -> :sswitch_10
        0xdc8c -> :sswitch_13
        0xdc96 -> :sswitch_b
        0xdc99 -> :sswitch_f
        0xdc9a -> :sswitch_12
        0xdc9b -> :sswitch_a
        0xdce0 -> :sswitch_d
        0xde92 -> :sswitch_15
        0xde93 -> :sswitch_14
        0xde94 -> :sswitch_15
        0xde99 -> :sswitch_14
        0xde9a -> :sswitch_14
        0xde9b -> :sswitch_16
        0xde9c -> :sswitch_16
        0xde9d -> :sswitch_16
    .end sparse-switch

    .line 599
    :sswitch_data_1
    .sparse-switch
        0xdc02 -> :sswitch_25
        0xdc03 -> :sswitch_17
        0xdc07 -> :sswitch_18
        0xdc09 -> :sswitch_1a
        0xdc41 -> :sswitch_1c
        0xdc44 -> :sswitch_19
        0xdc46 -> :sswitch_1e
        0xdc4e -> :sswitch_1a
        0xdc87 -> :sswitch_24
        0xdc88 -> :sswitch_24
        0xdc8b -> :sswitch_1d
        0xdc8c -> :sswitch_20
        0xdc99 -> :sswitch_1b
        0xdc9a -> :sswitch_1f
        0xde92 -> :sswitch_22
        0xde93 -> :sswitch_21
        0xde94 -> :sswitch_22
        0xde99 -> :sswitch_21
        0xde9a -> :sswitch_21
        0xde9b -> :sswitch_23
        0xde9c -> :sswitch_23
        0xde9d -> :sswitch_23
    .end sparse-switch
.end method
