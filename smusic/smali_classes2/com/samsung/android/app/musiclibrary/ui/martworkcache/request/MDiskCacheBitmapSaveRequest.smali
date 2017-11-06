.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;
.source "MDiskCacheBitmapSaveRequest.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    .line 27
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 11

    .prologue
    .line 40
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, "context":Landroid/content/Context;
    const/4 v3, 0x0

    .line 43
    .local v3, "tempFile":Ljava/io/File;
    :try_start_0
    const-string v5, "-network-temp"

    .line 44
    invoke-static {v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 45
    .local v4, "tempFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    const-string/jumbo v5, "tempBitmap"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 49
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "fs":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 50
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v5, v7, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 51
    if-eqz v2, :cond_1

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :cond_1
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v5

    .line 53
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v7, v7, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v8, v8, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    .line 54
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->addToDiskCache(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    if-eqz v3, :cond_2

    .line 59
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 65
    .end local v2    # "fs":Ljava/io/FileOutputStream;
    .end local v4    # "tempFolder":Ljava/io/File;
    :cond_2
    :goto_1
    return-void

    .line 51
    .restart local v2    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "tempFolder":Ljava/io/File;
    :catch_0
    move-exception v5

    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 55
    .end local v2    # "fs":Ljava/io/FileOutputStream;
    .end local v4    # "tempFolder":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 56
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->FULL_TAG:Ljava/lang/String;

    const-string v6, "failed to create temp file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 58
    if-eqz v3, :cond_2

    .line 59
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 51
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "tempFolder":Ljava/io/File;
    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 58
    .end local v2    # "fs":Ljava/io/FileOutputStream;
    .end local v4    # "tempFolder":Ljava/io/File;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_4

    .line 59
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_4
    throw v5

    .line 49
    .restart local v2    # "fs":Ljava/io/FileOutputStream;
    .restart local v4    # "tempFolder":Ljava/io/File;
    :catch_2
    move-exception v5

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 51
    :catchall_1
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_2
    if-eqz v2, :cond_5

    if-eqz v6, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    :goto_3
    :try_start_9
    throw v5

    :catch_3
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catchall_2
    move-exception v5

    goto :goto_2
.end method

.method public requestStillNecessary()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "MDiskCacheBitmapSaveRequest"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;->getToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
