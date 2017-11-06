.class public Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;
.super Ljava/lang/Object;
.source "SkippableCacheFile.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;


# instance fields
.field private final mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

.field private final mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;)V
    .locals 0
    .param p1, "cacheData"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
    .param p2, "secure"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    .line 20
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    .line 21
    return-void
.end method

.method private getPurePath(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->path:Ljava/lang/String;

    .line 83
    .local v0, "encryptedPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;->getPostFix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, "index":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public active(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 63
    return-void
.end method

.method public getAvailableBytes()J
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getFileRequest()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 56
    const-string v0, "cache"

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain$PlayingUri;->obtain(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mUri:Landroid/net/Uri;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-wide v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->totalBytes:J

    return-wide v0
.end method

.method public isDead()Z
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadFinished()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public obtainInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mSecure:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->getPurePath(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheSaver;->getCacheId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;->mCacheData:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->path:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public registerListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .prologue
    .line 46
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .prologue
    .line 51
    return-void
.end method
