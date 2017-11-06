.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;
.source "LoadArtworkRequest.java"


# static fields
.field private static final sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;-><init>(J)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V
    .locals 0
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p2, "publisher"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    .line 44
    return-void
.end method

.method private loadBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 67
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    .line 68
    .local v0, "cache":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->loadFromLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v1

    .line 69
    .local v1, "result":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 70
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 71
    const-string v2, "ArtWork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded bitmap using loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->putToMemCache(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 74
    :cond_2
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 75
    const-string v2, "ArtWork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load bitmap using loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadFromLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    .locals 12
    .param p1, "cache"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;
    .param p2, "size"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 82
    const-wide/16 v6, 0x0

    .line 83
    .local v6, "startTime":J
    sget-boolean v8, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 86
    :cond_0
    const/4 v4, 0x0

    .line 90
    .local v4, "result":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v9, v9, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getMaxRequestDuration(Landroid/net/Uri;)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v8, v10

    double-to-long v2, v8

    .line 92
    .local v2, "maxRequestDuration":J
    sget-boolean v8, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 93
    const-string v8, "ArtWork"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maxRequestDuration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    const/4 v5, 0x0

    .line 97
    .local v5, "wasWait":Z
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v9, v9, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->tryLock(Ljava/lang/Object;J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 98
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v9, v9, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->lock(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    const/4 v5, 0x1

    .line 105
    :cond_2
    if-eqz v5, :cond_3

    .line 106
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->loadFromMemoryCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 108
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->unknownMaxSizeResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 114
    :try_start_2
    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v10, v10, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    .line 125
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "maxRequestDuration":J
    .end local v5    # "wasWait":Z
    :goto_0
    return-object v8

    .line 111
    .restart local v2    # "maxRequestDuration":J
    .restart local v5    # "wasWait":Z
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getLoader()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v10, v10, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    .line 112
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    .line 111
    invoke-virtual {v8, v9, v10, p2, v11}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->loadArtworkResult(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 114
    :try_start_4
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v9, v9, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_4 .. :try_end_4} :catch_1

    .line 122
    sget-boolean v8, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 123
    iget-wide v8, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->loadingTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->loadingTime:J

    :cond_4
    move-object v8, v4

    .line 125
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v8

    :try_start_5
    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v10, v10, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V

    throw v8
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_5 .. :try_end_5} :catch_1

    .line 116
    .end local v2    # "maxRequestDuration":J
    .end local v5    # "wasWait":Z
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v8, "SMUSIC-ArtWork"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "there was an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->bypassNegativeCache:Z

    .line 119
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->sEmptyResult:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    goto :goto_0

    .line 116
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private loadFromMemoryCache()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 148
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getExactOrBiggestFromMemory(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 150
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "ArtWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load from memory cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->resizeIfNeed(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->putToMemCache(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V

    .line 159
    :cond_1
    return-object v0
.end method

.method private loadFullFirst()Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v1

    .line 132
    .local v1, "cache":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getResizeStrategy()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getBiggestSize()I

    move-result v0

    .line 133
    .local v0, "biggestSize":I
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->loadFromLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v2

    .line 134
    .local v2, "result":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 135
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 136
    const-string v3, "ArtWork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loaded full bitmap using loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->copyOtherSize(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->putToMemCache(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V

    .line 139
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->resizeIfNeed(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->putToMemCache(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V

    .line 144
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 141
    :cond_2
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 142
    const-string v3, "ArtWork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load full bitmap using loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handle()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->requestStillNecessary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->loadFromMemoryCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->publish(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->isRemote()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->isMultiResolution()Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->loadFullFirst()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->publish(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "LoadArtworkRequest"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;->getToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
