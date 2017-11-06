.class public Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;
.super Ljava/lang/Object;
.source "MilkAlbumArtWriter.java"


# static fields
.field private static final MEDIA_STORE_ALBUM_ART_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "MilkAlbumArtWriter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "content://media/external/audio/albumart"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->MEDIA_STORE_ALBUM_ART_URI:Landroid/net/Uri;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatorFileName(Landroid/content/Context;J)Landroid/content/ContentValues;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceId"    # J

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "fileName":Ljava/lang/String;
    const-string v6, "albumthumbs"

    invoke-static {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "dirPath":Ljava/lang/String;
    const-string v6, "MilkAlbumArtWriter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generatorFileName dirPath "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, "dirFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "albumThumbPath":Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->getAlbumId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "albumId":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "album_id"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v6, "_data"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-object v5
.end method

.method private static getAlbumId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceId"    # J

    .prologue
    const/4 v4, 0x0

    .line 162
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 163
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "source_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "selection":Ljava/lang/String;
    const-wide/16 v8, -0x1

    cmp-long v0, p1, v8

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "album_id"

    aput-object v5, v2, v0

    move-object v0, p0

    move-object v5, v4

    .line 166
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 168
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    const-string v0, "album_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 171
    if-eqz v6, :cond_0

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v4, v0

    .line 173
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v4

    .line 171
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_1

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 165
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    :catchall_0
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v4, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private static getSourceId(Landroid/content/Context;J)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumid"    # J

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    .line 177
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLocalSyncUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 178
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "selection":Ljava/lang/String;
    cmp-long v0, p1, v8

    if-eqz v0, :cond_3

    .line 180
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "source_id"

    aput-object v5, v2, v0

    move-object v0, p0

    move-object v5, v4

    .line 181
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    const-string/jumbo v0, "source_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 186
    if-eqz v6, :cond_0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-wide v4, v8

    .line 188
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_1
    return-wide v4

    .line 186
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    move-wide v4, v8

    .line 188
    goto :goto_1

    .line 186
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 180
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    :catchall_0
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v4, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_4
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public static writeAlbumArt(Landroid/content/Context;Landroid/content/ContentValues;Landroid/graphics/Bitmap;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    const-string v8, "MilkAlbumArtWriter"

    const-string/jumbo v9, "writeAlbumArt : values, is null"

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v8, 0x0

    .line 95
    :goto_0
    return v8

    .line 64
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v8, "albumthumbs"

    invoke-static {p0, v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, "dirFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 66
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 69
    :cond_1
    const-string v8, "album_id"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "albumId":Ljava/lang/String;
    const-string v8, "_data"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "albumThumbPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 75
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .local v6, "outstream":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 83
    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x55

    invoke-virtual {p2, v8, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    if-eqz v6, :cond_3

    if-eqz v9, :cond_4

    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 89
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/MusicDBHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 90
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "album_id"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 91
    const-string v8, "album_art"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "album_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2, v8, p1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 93
    .local v7, "updated":I
    const-string v8, "MilkAlbumArtWriter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeAlbumArt path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " albumId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is updated Count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 76
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "outstream":Ljava/io/OutputStream;
    .end local v7    # "updated":I
    :catch_0
    move-exception v4

    .line 77
    .local v4, "e":Ljava/io/IOException;
    const/4 v8, 0x1

    const-string v9, "MilkAlbumArtWriter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeAlbumArt : can not create albumThumbs "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 84
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "outstream":Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    :try_start_4
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .end local v6    # "outstream":Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    .line 85
    .restart local v4    # "e":Ljava/io/IOException;
    const/4 v8, 0x1

    const-string v9, "MilkAlbumArtWriter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeAlbumArt : albumThumbPath "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 86
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 85
    invoke-static {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 84
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "outstream":Ljava/io/OutputStream;
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 82
    :catch_3
    move-exception v8

    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 84
    :catchall_0
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v9, :cond_6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_3
    :try_start_8
    throw v8

    :catch_4
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catchall_1
    move-exception v8

    goto :goto_2
.end method

.method public static writeAlbumArtByAlbumId(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)Landroid/os/ParcelFileDescriptor;
    .locals 32
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "albumId"    # J

    .prologue
    .line 101
    const-string v5, "audio_meta"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_data"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "_id"

    aput-object v7, v6, v4

    const-string v7, "album_id=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 103
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    .line 101
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .local v17, "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 105
    if-eqz v17, :cond_0

    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    .line 106
    :cond_0
    const/4 v4, 0x1

    const-string v6, "MilkAlbumArtWriter"

    const-string/jumbo v7, "writeAlbumArtByAlbumId : can not get an audio path"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    const/16 v26, 0x0

    .line 111
    if-eqz v17, :cond_1

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :cond_1
    :goto_0
    return-object v26

    .line 111
    :catch_0
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 109
    :cond_3
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, "audioPath":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v14

    .line 111
    .local v14, "audioId":J
    if-eqz v17, :cond_4

    if-eqz v5, :cond_6

    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 113
    :cond_4
    :goto_1
    invoke-static {v13}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 114
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->getMilkDrmServerManager(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-result-object v27

    .line 115
    .local v27, "serverManager":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v13}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v24

    .line 116
    .local v24, "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    const-string v4, "DRM_CONTENT_KEY_META_BUFFER"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 117
    .local v25, "meta":Ljava/lang/String;
    const/16 v26, 0x0

    .line 118
    .local v26, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v25, :cond_5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 119
    :cond_5
    const/16 v26, 0x0

    goto :goto_0

    .line 111
    .end local v24    # "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .end local v25    # "meta":Ljava/lang/String;
    .end local v26    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v27    # "serverManager":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    :catch_1
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 101
    .end local v13    # "audioPath":Ljava/lang/String;
    .end local v14    # "audioId":J
    :catch_2
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    :catchall_0
    move-exception v5

    move-object/from16 v31, v5

    move-object v5, v4

    move-object/from16 v4, v31

    :goto_2
    if-eqz v17, :cond_7

    if-eqz v5, :cond_8

    :try_start_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_3
    throw v4

    :catch_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 125
    .restart local v13    # "audioPath":Ljava/lang/String;
    .restart local v14    # "audioId":J
    .restart local v24    # "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .restart local v25    # "meta":Ljava/lang/String;
    .restart local v26    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v27    # "serverManager":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    :cond_9
    :try_start_6
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    .local v23, "jsonObjectRoot":Lorg/json/JSONObject;
    new-instance v22, Lorg/json/JSONObject;

    const-string v4, "SoribadaApiResponse"

    .line 127
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v22, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "apic"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v19

    .line 134
    .end local v22    # "jsonObject":Lorg/json/JSONObject;
    .end local v23    # "jsonObjectRoot":Lorg/json/JSONObject;
    .local v19, "encodedAlbumart":Ljava/lang/String;
    :goto_4
    if-eqz v19, :cond_a

    .line 135
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v20

    .line 136
    .local v20, "encodedBitmap":[B
    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    .line 137
    move-object/from16 v0, v20

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 138
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->getSourceId(Landroid/content/Context;J)J

    move-result-wide v28

    .line 139
    .local v28, "sourceId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->generatorFileName(Landroid/content/Context;J)Landroid/content/ContentValues;

    move-result-object v30

    .line 140
    .local v30, "values":Landroid/content/ContentValues;
    const-string v4, "_data"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, "albumThumbPath":Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->writeAlbumArt(Landroid/content/Context;Landroid/content/ContentValues;Landroid/graphics/Bitmap;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 144
    :try_start_7
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v21, "file":Ljava/io/File;
    const/high16 v4, 0x10000000

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v26

    .line 154
    .end local v12    # "albumThumbPath":Ljava/lang/String;
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    .end local v20    # "encodedBitmap":[B
    .end local v21    # "file":Ljava/io/File;
    .end local v28    # "sourceId":J
    .end local v30    # "values":Landroid/content/ContentValues;
    :cond_a
    :goto_5
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    goto/16 :goto_0

    .line 129
    .end local v19    # "encodedAlbumart":Ljava/lang/String;
    :catch_4
    move-exception v18

    .line 130
    .local v18, "e":Lorg/json/JSONException;
    const/4 v4, 0x1

    const-string v5, "MilkAlbumArtWriter"

    const-string/jumbo v6, "writeAlbumArtByAlbumId : JSONException"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 131
    const/16 v19, 0x0

    .restart local v19    # "encodedAlbumart":Ljava/lang/String;
    goto :goto_4

    .line 146
    .end local v18    # "e":Lorg/json/JSONException;
    .restart local v12    # "albumThumbPath":Ljava/lang/String;
    .restart local v16    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v20    # "encodedBitmap":[B
    .restart local v28    # "sourceId":J
    .restart local v30    # "values":Landroid/content/ContentValues;
    :catch_5
    move-exception v18

    .line 147
    .local v18, "e":Ljava/lang/Exception;
    const-string v4, "MilkAlbumArtWriter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeAlbumArtByAlbumId >> open fail - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 151
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_b
    const-string v4, "MilkAlbumArtWriter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeAlbumArtByAlbumId >> bitmap is null. audioId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 158
    .end local v12    # "albumThumbPath":Ljava/lang/String;
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "encodedAlbumart":Ljava/lang/String;
    .end local v20    # "encodedBitmap":[B
    .end local v24    # "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .end local v25    # "meta":Ljava/lang/String;
    .end local v26    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v27    # "serverManager":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    .end local v28    # "sourceId":J
    .end local v30    # "values":Landroid/content/ContentValues;
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 111
    .end local v13    # "audioPath":Ljava/lang/String;
    .end local v14    # "audioId":J
    :catchall_1
    move-exception v4

    goto/16 :goto_2
.end method
