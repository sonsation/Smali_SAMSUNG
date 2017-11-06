.class public Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;
.super Ljava/lang/Object;
.source "DownloadQueueFileUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DownloadQueueFileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 124
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x2800

    :try_start_1
    new-array v0, v4, [B

    .line 129
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 130
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    .end local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v4

    .line 133
    .restart local v0    # "buf":[B
    .restart local v2    # "len":I
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 138
    return-void
.end method

.method public static deleteTempFile(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .prologue
    .line 51
    const-string v2, "DownloadQueueFileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteTempFile trackId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->getTempTag(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 53
    .local v1, "tag":Ljava/io/File;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getCodec()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->getTempTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 55
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 62
    :cond_1
    return-void
.end method

.method public static getDownloadFilePath()Ljava/io/File;
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 67
    .local v1, "sdCard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "SamsungMusic/Download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v0, "milkMusicDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const-string v2, "DownloadQueueFileUtils"

    const-string v3, "getMilkPath Failed to get milkMusicDirectory!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v1    # "sdCard":Ljava/io/File;
    :goto_0
    return-object v1

    .restart local v1    # "sdCard":Ljava/io/File;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private static getMainArtist(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "artistName"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string p0, ""

    .line 85
    .end local p0    # "artistName":Ljava/lang/String;
    .local v0, "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    return-object p0

    .line 81
    .end local v0    # "st":Ljava/util/StringTokenizer;
    .restart local p0    # "artistName":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    if-lez v1, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getTempTag(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 32
    .local v0, "cacheFolder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "%s.tag"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .local v1, "file":Ljava/io/File;
    return-object v1
.end method

.method public static getTempTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "fileExt"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 38
    .local v0, "cacheFolder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "%s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v1, "file":Ljava/io/File;
    return-object v1
.end method

.method private static makeFileExt(Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)Ljava/lang/String;
    .locals 1
    .param p0, "item"    # Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackType()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mp3"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mdrm"

    goto :goto_0
.end method

.method public static makeFileName(Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)Ljava/lang/String;
    .locals 11
    .param p0, "item"    # Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .prologue
    const/16 v10, 0x78

    const/4 v9, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->getMainArtist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->replaceProhibitedCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "artistName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->replaceProhibitedCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "trackTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->replaceProhibitedCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "album":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s_%d_%s_%s_%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v9

    const/4 v7, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const/4 v7, 0x4

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getBitrate()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 102
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "filename":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v10, :cond_0

    .line 109
    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 112
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/DownloadQueueFileUtils;->makeFileExt(Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    const-string v4, "DownloadQueueFileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeFileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-object v2
.end method

.method public static makeMusicFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "path"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method private static replaceProhibitedCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, ""

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[?/<>|*:\\\"{\\\\}]"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
