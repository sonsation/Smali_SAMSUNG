.class public final Lcom/samsung/android/app/music/common/util/MediaDbUtils;
.super Ljava/lang/Object;
.source "MediaDbUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;,
        Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;,
        Lcom/samsung/android/app/music/common/util/MediaDbUtils$EmptyMediaInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_SELECTION:Ljava/lang/String; = "title != \'\' AND is_music=1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DLNA_MEDIA_INFO_COLS:[Ljava/lang/String;

.field private static final SQLITE_MAX_VARIABLE_NUMBER:I = 0x3e7

.field private static final TAG:Ljava/lang/String; = "MediaDbUtils"

.field private static final sEmptyList:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    new-array v0, v2, [J

    sput-object v0, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->sEmptyList:[J

    .line 55
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "provider_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "extension"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "provider_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "seed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "genre_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->DLNA_MEDIA_INFO_COLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getAlbumUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 5
    .param p0, "listType"    # I
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 563
    const-string v4, "cp_attrs"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 564
    .local v3, "cpAttrsColIndex":I
    const-string v4, "album_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 567
    .local v0, "albumId":J
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 568
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 572
    .local v2, "baseUri":Landroid/net/Uri;
    :goto_0
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 570
    .end local v2    # "baseUri":Landroid/net/Uri;
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "baseUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public static getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selectionGroup"    # Ljava/lang/String;
    .param p2, "sortOrderGroup"    # Ljava/lang/String;
    .param p3, "keyWords"    # [Ljava/lang/String;

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)[J

    move-result-object v0

    return-object v0
.end method

.method public static getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)[J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selectionGroup"    # Ljava/lang/String;
    .param p2, "sortOrderGroup"    # Ljava/lang/String;
    .param p3, "keyWords"    # [Ljava/lang/String;
    .param p4, "cpAttrs"    # I

    .prologue
    .line 181
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v1, v0

    if-nez v1, :cond_2

    .line 182
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [J

    .line 200
    :cond_1
    :goto_0
    return-object v1

    .line 185
    :cond_2
    move-object/from16 v0, p3

    array-length v11, v0

    .line 186
    .local v11, "size":I
    div-int/lit16 v2, v11, 0x3e7

    rem-int/lit16 v1, v11, 0x3e7

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    add-int v12, v2, v1

    .line 188
    .local v12, "subsetSize":I
    const/4 v9, 0x0

    .line 189
    .local v9, "index":I
    new-array v13, v12, [Landroid/database/Cursor;

    .line 190
    .local v13, "subsets":[Landroid/database/Cursor;
    const/4 v5, 0x0

    .local v5, "i":I
    move v10, v9

    .end local v9    # "index":I
    .local v10, "index":I
    :goto_2
    if-ge v5, v11, :cond_4

    .line 193
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    const/16 v6, 0x3e7

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p4

    .line 194
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getSubSelectionTrackCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;III)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v13, v10

    .line 190
    add-int/lit16 v5, v5, 0x3e7

    move v10, v9

    .end local v9    # "index":I
    .restart local v10    # "index":I
    goto :goto_2

    .line 186
    .end local v5    # "i":I
    .end local v10    # "index":I
    .end local v12    # "subsetSize":I
    .end local v13    # "subsets":[Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 198
    .restart local v5    # "i":I
    .restart local v10    # "index":I
    .restart local v12    # "subsetSize":I
    .restart local v13    # "subsets":[Landroid/database/Cursor;
    :cond_4
    new-instance v8, Landroid/database/MergeCursor;

    invoke-direct {v8, v13}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v8, "c":Landroid/database/MergeCursor;
    const/4 v2, 0x0

    .line 199
    :try_start_0
    invoke-static {v8}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/database/Cursor;)[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 200
    if-eqz v8, :cond_1

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v8}, Landroid/database/MergeCursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v8}, Landroid/database/MergeCursor;->close()V

    goto :goto_0

    .line 198
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    if-eqz v2, :cond_7

    :try_start_3
    invoke-virtual {v8}, Landroid/database/MergeCursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    :goto_3
    throw v1

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v8}, Landroid/database/MergeCursor;->close()V

    goto :goto_3
.end method

.method public static getAudioIds(Landroid/database/Cursor;)[J
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 246
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object v0

    return-object v0
.end method

.method public static getAudioIds(Landroid/database/Cursor;I)[J
    .locals 14
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "headerCount"    # I

    .prologue
    const/4 v13, 0x0

    .line 250
    const-string v10, "MediaDbUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAudioIds() - cursor: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    if-nez p0, :cond_0

    .line 253
    sget-object v8, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->sEmptyList:[J

    .line 295
    :goto_0
    return-object v8

    .line 256
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 257
    .local v5, "len":I
    if-nez v5, :cond_1

    .line 258
    sget-object v8, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->sEmptyList:[J

    goto :goto_0

    .line 260
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 264
    :try_start_0
    const-string v10, "audio_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 269
    .local v4, "index":I
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    sub-int/2addr v10, p1

    new-array v8, v10, [J

    .line 270
    .local v8, "list":[J
    const/4 v6, 0x0

    .local v6, "length":I
    move v7, v6

    .line 275
    .end local v6    # "length":I
    .local v7, "length":I
    :goto_2
    :try_start_1
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 279
    .local v2, "id":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_5

    .line 280
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "length":I
    .restart local v6    # "length":I
    aput-wide v2, v8, v7

    .line 282
    .end local v2    # "id":J
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 284
    if-nez v6, :cond_2

    .line 285
    sget-object v8, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->sEmptyList:[J

    goto :goto_0

    .line 265
    .end local v4    # "index":I
    .end local v6    # "length":I
    .end local v8    # "list":[J
    :catch_0
    move-exception v1

    .line 266
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v10, "_id"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "index":I
    goto :goto_1

    .line 276
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "length":I
    .restart local v8    # "list":[J
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move v6, v7

    .line 277
    .end local v7    # "length":I
    .restart local v6    # "length":I
    goto :goto_3

    .line 288
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-eq v6, v10, :cond_3

    .line 289
    new-array v9, v6, [J

    .line 290
    .local v9, "temp":[J
    invoke-static {v8, v13, v9, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    move-object v8, v9

    .line 294
    .end local v9    # "temp":[J
    :cond_3
    const-string v10, "MediaDbUtils"

    const-string v11, "getAudioIds end"

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v7, v6

    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_2

    .restart local v2    # "id":J
    :cond_5
    move v6, v7

    .end local v7    # "length":I
    .restart local v6    # "length":I
    goto :goto_3
.end method

.method private static getDlnaDmsMusicInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 72
    const/4 v7, 0x0

    .line 73
    .local v7, "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    const/4 v6, 0x0

    .line 75
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->DLNA_MEDIA_INFO_COLS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 76
    if-eqz v6, :cond_3

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    invoke-direct {v8}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v7    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .local v8, "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    :try_start_1
    iput-object p1, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->uri:Landroid/net/Uri;

    .line 80
    const-string/jumbo v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->title:Ljava/lang/String;

    .line 81
    const-string v0, "album"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->album:Ljava/lang/String;

    .line 82
    const-string v0, "artist"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->artist:Ljava/lang/String;

    .line 83
    const-string v0, "album_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->albumId:J

    .line 84
    const-string v0, "duration"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->duration:J

    .line 85
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->mimeType:Ljava/lang/String;

    .line 86
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->filePath:Ljava/lang/String;

    .line 87
    const-string v0, "extension"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->extension:Ljava/lang/String;

    .line 88
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->id:J

    .line 89
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->fileSize:J

    .line 90
    const-string/jumbo v0, "provider_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->dmsName:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "provider_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->dmsId:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "seed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->seed:Ljava/lang/String;

    .line 93
    const-string v0, "genre_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->genre:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v8

    .line 101
    .end local v8    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .restart local v7    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    :goto_0
    if-eqz v6, :cond_0

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    const-string v1, "MediaDbUtils"

    const-string v2, "AS: MusicAlbumInfo : Title: %s, Artist: %s, Album: %s, Duration: %s, MimeType: %s"

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v7, :cond_4

    const-string v0, "null"

    :goto_1
    aput-object v0, v3, v4

    const/4 v4, 0x1

    if-nez v7, :cond_5

    const-string v0, "null"

    :goto_2
    aput-object v0, v3, v4

    const/4 v4, 0x2

    if-nez v7, :cond_6

    const-string v0, "null"

    :goto_3
    aput-object v0, v3, v4

    const/4 v4, 0x3

    if-nez v7, :cond_7

    const-string v0, "null"

    .line 108
    :goto_4
    aput-object v0, v3, v4

    const/4 v4, 0x4

    if-nez v7, :cond_8

    const-string v0, "null"

    :goto_5
    aput-object v0, v3, v4

    .line 105
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-object v7

    .line 95
    :cond_1
    :try_start_2
    const-string v0, "MediaDbUtils"

    const-string v1, "AS: getAlbumInfo: cursor.moveToFirst() FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v6, :cond_2

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 98
    :cond_3
    :try_start_3
    const-string v0, "MediaDbUtils"

    const-string v1, "AS: getAlbumInfo: cursor==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 105
    :cond_4
    iget-object v0, v7, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->title:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, v7, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->artist:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v0, v7, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->album:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-wide v10, v7, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->duration:J

    .line 108
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_4

    :cond_8
    iget-object v0, v7, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->mimeType:Ljava/lang/String;

    goto :goto_5

    .line 101
    .end local v7    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .restart local v8    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .restart local v7    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    goto :goto_6
.end method

.method public static getDmrCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nic"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 343
    const/4 v6, 0x0

    .line 344
    .local v6, "count":I
    const/4 v7, 0x0

    .line 345
    .local v7, "cursor":Landroid/database/Cursor;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v1

    .line 346
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 347
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 348
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 349
    const-string v3, "nic_id = ? "

    .line 350
    new-array v4, v5, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    aput-object p1, v4, v1

    .line 353
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Renderer;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    .line 354
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 356
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 360
    :cond_1
    if-eqz v7, :cond_2

    .line 361
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_2
    const-string v0, "MediaDbUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumberOfDmr() - count: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " nic: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return v6

    .line 360
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 361
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getFirstItemTrackListInfo(ILandroid/content/Context;)Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    .locals 1
    .param p0, "listType"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    packed-switch p0, :pswitch_data_0

    .line 553
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getFirstItemTrackListInfoInternal(ILandroid/content/Context;)Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;

    move-result-object v0

    .line 556
    .local v0, "info":Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    :goto_0
    return-object v0

    .line 550
    .end local v0    # "info":Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getPlaylistFirstItemTrackInfoInternal(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;

    move-result-object v0

    .line 551
    .restart local v0    # "info":Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x10004
        :pswitch_0
    .end packed-switch
.end method

.method private static getFirstItemTrackListInfoInternal(ILandroid/content/Context;)Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    .locals 10
    .param p0, "listType"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 576
    new-instance v9, Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;

    invoke-direct {v9}, Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;-><init>()V

    .line 577
    .local v9, "info":Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    const/4 v7, 0x0

    .line 578
    .local v7, "c":Landroid/database/Cursor;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedTrackListTypeOrThrow(I)I

    move-result v8

    .line 579
    .local v8, "detailListType":I
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getMatchedQueryArgs(ILandroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v6

    .line 582
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :try_start_0
    iget-object v0, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 583
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 586
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 588
    iput v8, v9, Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;->trackListType:I

    .line 589
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;->keyword:Ljava/lang/String;

    .line 590
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;->title:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    if-eqz v7, :cond_0

    .line 597
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v9    # "info":Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    :cond_0
    :goto_0
    return-object v9

    .line 593
    .restart local v9    # "info":Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    :cond_1
    const/4 v9, 0x0

    .line 596
    .end local v9    # "info":Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    if-eqz v7, :cond_0

    .line 597
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 596
    .restart local v9    # "info":Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 597
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getItemCountQueryArgs(ILjava/lang/String;Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 5
    .param p0, "listType"    # I
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 506
    packed-switch p0, :pswitch_data_0

    .line 536
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no matched track listType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :pswitch_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>()V

    .line 509
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const-string v1, "_id"

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 539
    :goto_0
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "count(*)"

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 541
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 542
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 543
    return-object v0

    .line 512
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;-><init>()V

    .line 513
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const-string v1, "_id"

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 516
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;-><init>()V

    .line 517
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const-string v1, "_id"

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 520
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_4
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;-><init>(Landroid/content/Context;)V

    .line 521
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const-string v1, "bucket_id"

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 524
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_5
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreQueryArgs;-><init>()V

    .line 525
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const-string v1, "genre_name"

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 528
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_6
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;-><init>()V

    .line 529
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const-string v1, "composer"

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 532
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_7
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;-><init>()V

    .line 533
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const-string/jumbo v1, "provider_id"

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private static getMatchedQueryArgs(ILandroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 5
    .param p0, "listType"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 618
    packed-switch p0, :pswitch_data_0

    .line 652
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no matched track listType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 620
    :pswitch_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;-><init>()V

    .line 621
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "album"

    aput-object v2, v1, v4

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 655
    :goto_0
    return-object v0

    .line 625
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;-><init>()V

    .line 626
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "artist"

    aput-object v2, v1, v4

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    goto :goto_0

    .line 630
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;-><init>(Landroid/content/Context;)V

    .line 631
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "bucket_id"

    aput-object v2, v1, v3

    const-string v2, " CASE WHEN bucket_id=? THEN ?      WHEN bucket_id=? THEN ?      ELSE bucket_display_name END AS bucket_display_name"

    aput-object v2, v1, v4

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    goto :goto_0

    .line 635
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_4
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreQueryArgs;-><init>()V

    .line 636
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Genres;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 637
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "genre_name"

    aput-object v2, v1, v3

    const-string v2, "genre_name"

    aput-object v2, v1, v4

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    goto :goto_0

    .line 641
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_5
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;-><init>()V

    .line 642
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 643
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "composer"

    aput-object v2, v1, v3

    const-string v2, "composer"

    aput-object v2, v1, v4

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    goto :goto_0

    .line 647
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :pswitch_6
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;-><init>()V

    .line 648
    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "provider_id"

    aput-object v2, v1, v3

    const-string/jumbo v2, "provider_name"

    aput-object v2, v1, v4

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    goto :goto_0

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static getMediaInfo(Landroid/content/Context;ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listType"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    sparse-switch p1, :sswitch_data_0

    .line 67
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;->getMediaInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    move-result-object v0

    :goto_0
    return-object v0

    .line 65
    :sswitch_0
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getDlnaDmsMusicInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    move-result-object v0

    goto :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000b -> :sswitch_0
        0x10000f -> :sswitch_0
    .end sparse-switch
.end method

.method private static getMediaInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    .line 114
    const/4 v8, 0x0

    .line 115
    .local v8, "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    const/4 v7, 0x0

    .line 117
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;->DEFAULT_MEDIA_INFO_COLS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 118
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 120
    if-eqz v7, :cond_5

    .line 121
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    invoke-direct {v9}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v8    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .local v9, "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    :try_start_1
    iput-object p1, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->uri:Landroid/net/Uri;

    .line 124
    const-string/jumbo v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->title:Ljava/lang/String;

    .line 125
    const-string v0, "album"

    .line 126
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->album:Ljava/lang/String;

    .line 127
    const-string v0, "artist"

    .line 128
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->artist:Ljava/lang/String;

    .line 129
    const-string v0, "album_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->albumId:J

    .line 130
    const-string v0, "artist_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->artistId:J

    .line 131
    const-string v0, "duration"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->duration:J

    .line 132
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->mimeType:Ljava/lang/String;

    .line 133
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->filePath:Ljava/lang/String;

    .line 134
    iget-object v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 135
    iget-object v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->title:Ljava/lang/String;

    .line 137
    :cond_0
    const-string v0, "genre_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->genre:Ljava/lang/String;

    .line 138
    const-string v0, "is_secretbox"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_2

    move v0, v11

    :goto_0
    iput-boolean v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->isPrivate:Z

    .line 140
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HIGH_RESOLUTION_AUDIO:Z

    if-eqz v0, :cond_c

    .line 141
    const-string/jumbo v0, "sampling_rate"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 142
    .local v10, "samplingRate":I
    const-string v0, "bit_depth"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 143
    .local v6, "bitDepth":I
    iget-object v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->mimeType:Ljava/lang/String;

    .line 144
    invoke-static {v10, v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->getSoundQualityData(IILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->soundQualityData:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .line 153
    .end local v6    # "bitDepth":I
    .end local v9    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .end local v10    # "samplingRate":I
    .restart local v8    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    :goto_1
    if-eqz v7, :cond_1

    .line 154
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_1
    const-string v1, "MediaDbUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaInfo uri : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_6

    const-string v0, "null"

    .line 157
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " title : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v8, :cond_7

    const-string v0, "null"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " album id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v8, :cond_8

    const-string v0, "null"

    .line 159
    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-object v8

    .line 138
    .end local v8    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .restart local v9    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    .end local v9    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .restart local v8    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    :cond_3
    :try_start_2
    const-string v0, "SMUSIC-MediaDbUtils"

    const-string v1, "getAlbumInfo: cursor.moveToFirst() FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_5
    if-eqz v7, :cond_4

    .line 154
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_4
    const-string v2, "MediaDbUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaInfo uri : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_9

    const-string v0, "null"

    .line 157
    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " title : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v8, :cond_a

    const-string v0, "null"

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " album id : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v8, :cond_b

    const-string v0, "null"

    .line 159
    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_5
    :try_start_3
    const-string v0, "SMUSIC-MediaDbUtils"

    const-string v1, "getAlbumInfo: cursor==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 157
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->title:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget-wide v4, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->albumId:J

    .line 159
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_4

    .line 157
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    iget-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->title:Ljava/lang/String;

    goto :goto_7

    :cond_b
    iget-wide v4, v8, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->albumId:J

    .line 159
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_8

    .line 153
    .end local v8    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .restart local v9    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v8, v9

    .end local v9    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .restart local v8    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    goto :goto_5

    .end local v8    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .restart local v9    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    :cond_c
    move-object v8, v9

    .end local v9    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    .restart local v8    # "info":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    goto/16 :goto_1
.end method

.method public static getMusicCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    const v0, 0x10001

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getMusicCount(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getMusicCount(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cpAttrs"    # I

    .prologue
    .line 376
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getMusicCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getMusicCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 380
    const/4 v6, 0x0

    .line 381
    .local v6, "count":I
    const/4 v7, 0x0

    .line 382
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v1

    .line 384
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 385
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 386
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 390
    :cond_0
    if-eqz v7, :cond_1

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_1
    const-string v0, "MediaDbUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMusicCount() count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return v6

    .line 390
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getMusicCountInArray(Landroid/content/Context;[JI)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioIds"    # [J
    .param p2, "storageLocation"    # I

    .prologue
    const/4 v6, 0x0

    .line 399
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v6

    .line 403
    :cond_1
    array-length v0, p1

    .line 404
    .local v0, "audioIdsLength":I
    const/4 v3, 0x0

    .local v3, "offset":I
    if-ge v3, v0, :cond_0

    .line 405
    const/16 v2, 0x3e7

    .line 406
    .local v2, "len":I
    const/16 v7, 0x3e7

    if-le v7, v0, :cond_2

    .line 407
    sub-int v2, v0, v3

    .line 409
    :cond_2
    if-lez v2, :cond_0

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .local v4, "selection":Ljava/lang/StringBuilder;
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    .line 417
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    new-array v5, v2, [Ljava/lang/String;

    .line 419
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 420
    const-string v6, "?,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    :cond_3
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 424
    const/16 v6, 0x29

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getMusicCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method public static getNicId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dmsId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 306
    const/4 v7, 0x0

    .line 307
    .local v7, "nic":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 308
    const/4 v6, 0x0

    .line 309
    .local v6, "c":Landroid/database/Cursor;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "nic_id"

    aput-object v0, v2, v1

    .line 310
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "provider_id = ?"

    .line 311
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 313
    .local v4, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    .line 314
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 316
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "nic_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 320
    :cond_0
    if-eqz v6, :cond_1

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 325
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v0, "MediaDbUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNic() - deviceID: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " NIC: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-object v7

    .line 320
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getPlaylistCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 435
    const/4 v6, 0x0

    .line 436
    .local v6, "count":I
    const/4 v7, 0x0

    .line 437
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v1

    .line 439
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 440
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 442
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 446
    :cond_0
    if-eqz v7, :cond_1

    .line 447
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_1
    const-string v0, "MediaDbUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlaylistCount() count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return v6

    .line 446
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 447
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getPlaylistFirstItemTrackInfoInternal(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 603
    new-instance v1, Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;-><init>()V

    .line 604
    .local v1, "info":Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/ListUtils;->getDynamicDefaultPlaylistIdsFromPref(Landroid/content/Context;)[J

    move-result-object v0

    .line 605
    .local v0, "ids":[J
    aget-wide v2, v0, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;->keyword:Ljava/lang/String;

    .line 606
    aget-wide v2, v0, v4

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;->title:Ljava/lang/String;

    .line 607
    const v2, 0x100004

    iput v2, v1, Lcom/samsung/android/app/music/common/util/MediaDbUtils$TrackListInfo;->trackListType:I

    .line 608
    return-object v1
.end method

.method private static getSubSelectionTrackCursor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;III)Landroid/database/Cursor;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selectionGroup"    # Ljava/lang/String;
    .param p2, "sortOrderGroup"    # Ljava/lang/String;
    .param p3, "keyWords"    # [Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "len"    # I
    .param p6, "cpAttrs"    # I

    .prologue
    .line 213
    add-int v0, p4, p5

    array-length v1, p3

    if-le v0, v1, :cond_0

    .line 214
    array-length v0, p3

    sub-int p5, v0, p4

    .line 216
    :cond_0
    if-gtz p5, :cond_1

    .line 219
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    .line 223
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .local v7, "selection":Ljava/lang/StringBuilder;
    const-string v0, " AND ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    new-array v4, p5, [Ljava/lang/String;

    .line 228
    .local v4, "subKeywords":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, p5, :cond_3

    .line 229
    const/16 v0, 0x3f

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v0, p5, -0x1

    if-ge v6, v0, :cond_2

    .line 231
    const/16 v0, 0x2c

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :cond_2
    add-int v0, p4, v6

    aget-object v0, p3, v0

    aput-object v0, v4, v6

    .line 228
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 235
    :cond_3
    const-string v0, "))"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->getSelectedContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 241
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, p2

    .line 240
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static isExistDrm(Landroid/content/Context;[J)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkedAudioIds"    # [J

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 667
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    move v0, v12

    .line 706
    :goto_0
    return v0

    .line 671
    :cond_1
    const/4 v10, 0x0

    .local v10, "offset":I
    :goto_1
    array-length v0, p1

    if-ge v10, v0, :cond_c

    .line 673
    const/16 v9, 0x3e7

    .line 674
    .local v9, "len":I
    add-int v0, v10, v9

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 675
    array-length v0, p1

    sub-int v9, v0, v10

    .line 677
    :cond_2
    if-gtz v9, :cond_3

    move v0, v12

    .line 680
    goto :goto_0

    .line 683
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .local v11, "selection":Ljava/lang/StringBuilder;
    const-string v0, "("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "drm_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    .line 685
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_drm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    .line 686
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    new-array v4, v9, [Ljava/lang/String;

    .line 688
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v9, :cond_4

    .line 689
    const-string v0, "?,"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    add-int v0, v10, v8

    aget-wide v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 688
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 692
    :cond_4
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 693
    const/16 v0, 0x29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v12

    .line 697
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    .line 696
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 698
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 699
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    .line 700
    .local v7, "count":I
    if-lez v7, :cond_7

    .line 704
    if-eqz v6, :cond_5

    if-eqz v5, :cond_6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_3
    move v0, v13

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v7    # "count":I
    :cond_7
    if-eqz v6, :cond_8

    if-eqz v5, :cond_9

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 672
    :cond_8
    :goto_4
    add-int/lit16 v10, v10, 0x3e7

    goto/16 :goto_1

    .line 704
    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 695
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 704
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_5
    if-eqz v6, :cond_a

    if-eqz v5, :cond_b

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_a
    :goto_6
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "i":I
    .end local v9    # "len":I
    .end local v11    # "selection":Ljava/lang/StringBuilder;
    :cond_c
    move v0, v12

    .line 706
    goto/16 :goto_0

    .line 704
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "i":I
    .restart local v9    # "len":I
    .restart local v11    # "selection":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method public static isExistItem(ILjava/lang/String;Landroid/content/Context;)Z
    .locals 9
    .param p0, "listType"    # I
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 479
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getItemCountQueryArgs(ILjava/lang/String;Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v6

    .line 481
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    const/4 v7, 0x0

    .line 483
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 484
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 486
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 492
    :goto_0
    if-eqz v7, :cond_0

    .line 493
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v8

    .line 487
    goto :goto_0

    .line 492
    :cond_2
    if-eqz v7, :cond_3

    .line 493
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_1

    .line 492
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 493
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
