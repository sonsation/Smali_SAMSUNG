.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;
.source "MDiskCacheFileSaveRequest.java"


# instance fields
.field private final mBitmapSize:I

.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;ILjava/io/File;)V
    .locals 0
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p2, "bitmapSize"    # I
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    .line 27
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->mBitmapSize:I

    .line 28
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->mFile:Ljava/io/File;

    .line 29
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 9

    .prologue
    .line 39
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 40
    .local v1, "context":Landroid/content/Context;
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->mBitmapSize:I

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v5, v5, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_5

    .line 45
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->mFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "fs":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 47
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 48
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v7, v7, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    .line 47
    invoke-static {v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getLocalBitmapFromFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 50
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    invoke-static {v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->resizeIfNeed(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v4, v1, v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->putToDiskCache(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 59
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fs":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 80
    return-void

    .line 59
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "fs":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fs":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 60
    .local v3, "ignored":Ljava/io/IOException;
    :try_start_5
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to load bitmap from temporary file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 74
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 78
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    throw v4

    .line 59
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "fs":Ljava/io/FileInputStream;
    :cond_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 45
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v4

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 59
    :catchall_1
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v5, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_3
    :goto_2
    :try_start_9
    throw v4

    :catch_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 68
    .end local v2    # "fs":Ljava/io/FileInputStream;
    :cond_5
    :try_start_a
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->mFile:Ljava/io/File;

    invoke-virtual {v4, v1, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->putToDiskCache(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 59
    .restart local v2    # "fs":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    goto :goto_1
.end method

.method public requestStillNecessary()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "MDiskCacheFileSaveRequest"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;->getToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
