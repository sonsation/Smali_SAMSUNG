.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;
.super Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LIFECYCLE:Ljava/lang/String; = "LifeCycle: "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String; = "streaming_id=? AND is_full_stream=?"

.field private static final SELECTION_FULL_DOWNLOADED:Ljava/lang/String; = "streaming_id=? AND is_full_stream=? AND content_length=downloaded_length"

.field private static final SUB_TAG:Ljava/lang/String; = "CacheManager> "

.field private static volatile sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mBasePath:Ljava/lang/String;

.field private mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;

.field private final mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content_length"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "server_time_stamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "quality"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "encrypt_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "downloaded_length"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;-><init>()V

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->getBaseCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->delete(Ljava/io/File;)V

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online$StreamingCache;->CONTENT_URI:Landroid/net/Uri;

    .line 235
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public static clearCache(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 239
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->getBaseCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->getBaseCachePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->delete(Ljava/io/File;)V

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online$StreamingCache;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path LIKE \"%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static delete(Ljava/io/File;)V
    .locals 4
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 256
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 258
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 259
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 260
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->delete(Ljava/io/File;)V

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    const-string v2, "deleteFile. File remove error !!"

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->printInfoLog(Ljava/lang/String;)V

    .line 267
    .end local v1    # "files":[Ljava/io/File;
    :cond_1
    return-void
.end method

.method private deleteFileAndCp(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const-string v1, "deleteFileAndCp. File remove error !!"

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->printInfoLog(Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online$StreamingCache;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "path=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method private ensureCache()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->hasCafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_0
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->hasCafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    monitor-exit p0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 98
    :cond_1
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mBasePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->ensureCafe()V

    .line 100
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .locals 6
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p2, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 150
    iget v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->secureType:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->getCafe()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureFactory;->createSecure(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    move-result-object v4

    .line 151
    .local v4, "secure":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mBasePath:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;Ljava/lang/String;)V

    .line 152
    .local v0, "cachedFile":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheFile;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 153
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    const-string v3, "executeCacheFile"

    if-nez p2, :cond_0

    const-string v1, " "

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v0

    .line 153
    :cond_0
    const-string v1, "find cache!"

    goto :goto_0
.end method

.method private findFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .locals 9
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->ensureCache()V

    .line 113
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->getCachedData(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    move-result-object v0

    .line 114
    .local v0, "data":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0, p1, v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v4

    .line 145
    :goto_0
    return-object v4

    .line 118
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] data.isSameQuality "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->isSameQuality:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " req total: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->totalBytes:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->printInfoLog(Ljava/lang/String;)V

    .line 121
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->path:Ljava/lang/String;

    .line 122
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v4

    goto :goto_0

    .line 125
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 127
    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->deleteFileAndCp(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1, v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v4

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->isSkippableFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 132
    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->secureType:I

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mCacheVersion:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;

    .line 133
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/CacheVersion;->getCafe()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureFactory;->createSecure(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;

    move-result-object v3

    .line 134
    .local v3, "secure":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;

    invoke-direct {v4, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/SkippableCacheFile;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;)V

    goto :goto_0

    .line 136
    .end local v3    # "secure":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;
    :cond_4
    iget-boolean v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->isSameQuality:Z

    if-eqz v4, :cond_5

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->hasCachedSourceChanged(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] cached data changed, current: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->printInfoLog(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->deleteFileAndCp(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v4

    goto/16 :goto_0

    .line 145
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->executeCacheFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private static getBaseCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 252
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getBaseCachePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCachedData(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;
    .locals 26
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .prologue
    .line 171
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 173
    .local v22, "streamingId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    iget-boolean v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->findFullCacheOnly:Z

    if-eqz v2, :cond_2

    .line 174
    const-string/jumbo v5, "streaming_id=? AND is_full_stream=? AND content_length=downloaded_length"

    .line 178
    .local v5, "selection":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online$StreamingCache;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 180
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->parseSourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v7

    const/4 v7, 0x1

    .line 181
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->parseFullSong(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v7

    const-string v7, "quality DESC"

    .line 179
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 178
    .local v16, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 183
    if-eqz v16, :cond_7

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 184
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->parseQuality(Ljava/lang/String;)I

    move-result v20

    .line 185
    .local v20, "requestedQuality":I
    const-string v2, "quality"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 186
    .local v19, "qualityIndex":I
    const-string v2, "content_length"

    .line 187
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 188
    .local v24, "totalIndex":I
    const-string v2, "encrypt_type"

    .line 189
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 190
    .local v17, "encryptIndex":I
    const-string v2, "path"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 191
    .local v18, "pathIndex":I
    const-string v2, "downloaded_length"

    .line 192
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 193
    .local v15, "bytesIndex":I
    const-string/jumbo v2, "server_time_stamp"

    .line 194
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 196
    .local v23, "timeStampIndex":I
    :cond_0
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 197
    .local v21, "savedQuality":I
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 198
    .local v10, "totalBytes":J
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 199
    .local v8, "downloadedBytes":J
    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 200
    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 201
    .local v13, "secureType":I
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 202
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    invoke-direct/range {v6 .. v14}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;-><init>(Ljava/lang/String;JJLjava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    if-eqz v16, :cond_1

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    .end local v8    # "downloadedBytes":J
    .end local v10    # "totalBytes":J
    .end local v13    # "secureType":I
    .end local v15    # "bytesIndex":I
    .end local v17    # "encryptIndex":I
    .end local v18    # "pathIndex":I
    .end local v19    # "qualityIndex":I
    .end local v20    # "requestedQuality":I
    .end local v21    # "savedQuality":I
    .end local v23    # "timeStampIndex":I
    .end local v24    # "totalIndex":I
    :cond_1
    :goto_1
    return-object v6

    .line 176
    .end local v5    # "selection":Ljava/lang/String;
    .end local v16    # "c":Landroid/database/Cursor;
    :cond_2
    const-string/jumbo v5, "streaming_id=? AND is_full_stream=?"

    .restart local v5    # "selection":Ljava/lang/String;
    goto/16 :goto_0

    .line 216
    .restart local v8    # "downloadedBytes":J
    .restart local v10    # "totalBytes":J
    .restart local v13    # "secureType":I
    .restart local v15    # "bytesIndex":I
    .restart local v16    # "c":Landroid/database/Cursor;
    .restart local v17    # "encryptIndex":I
    .restart local v18    # "pathIndex":I
    .restart local v19    # "qualityIndex":I
    .restart local v20    # "requestedQuality":I
    .restart local v21    # "savedQuality":I
    .restart local v23    # "timeStampIndex":I
    .restart local v24    # "totalIndex":I
    :catch_0
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 203
    .end local v13    # "secureType":I
    :cond_4
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 205
    cmp-long v2, v8, v10

    if-nez v2, :cond_6

    .line 206
    :try_start_2
    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 207
    .restart local v13    # "secureType":I
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 208
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v14}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;-><init>(Ljava/lang/String;JJLjava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    if-eqz v16, :cond_1

    if-eqz v3, :cond_5

    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 214
    .end local v13    # "secureType":I
    :cond_6
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .line 216
    .end local v8    # "downloadedBytes":J
    .end local v10    # "totalBytes":J
    .end local v15    # "bytesIndex":I
    .end local v17    # "encryptIndex":I
    .end local v18    # "pathIndex":I
    .end local v19    # "qualityIndex":I
    .end local v20    # "requestedQuality":I
    .end local v21    # "savedQuality":I
    .end local v23    # "timeStampIndex":I
    .end local v24    # "totalIndex":I
    :cond_7
    if-eqz v16, :cond_8

    if-eqz v3, :cond_9

    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 217
    :cond_8
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 216
    :catch_2
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 178
    :catch_3
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 216
    :catchall_0
    move-exception v3

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    :goto_3
    if-eqz v16, :cond_a

    if-eqz v3, :cond_b

    :try_start_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_a
    :goto_4
    throw v2

    :catch_4
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v2

    goto :goto_3
.end method

.method public static getOnlineCacheSize(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, "fullSize":I
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->getBaseCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "cacheRoot":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 275
    .local v3, "list":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 277
    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, v3, v6

    .line 278
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v5, v8

    .line 279
    .local v5, "size":I
    add-int/2addr v2, v5

    .line 277
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "list":[Ljava/io/File;
    .end local v5    # "size":I
    :cond_0
    return v2
.end method

.method private hasCachedSourceChanged(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Z
    .locals 1
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p2, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->isChangedTotalBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->isChangedServerTimeStamp(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChangedServerTimeStamp(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Z
    .locals 2
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p2, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    .prologue
    .line 162
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->serverTimeStamp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->serverTimeStamp:Ljava/lang/String;

    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->serverTimeStamp:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChangedTotalBytes(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;)Z
    .locals 4
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .param p2, "data"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;

    .prologue
    .line 167
    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->totalBytes:J

    iget-wide v2, p2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager$CacheData;->totalBytes:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static obtainInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call createInstance method first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->sCacheManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;

    return-object v0
.end method

.method private static printErrorLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method private static printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheManager> LifeCycle: [id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "prefix":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%-50s | %-20s | %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "log":Ljava/lang/String;
    const-string v2, "SMUSIC-SV-PlayerServer"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method


# virtual methods
.method protected request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .locals 3
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->findFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v0

    .line 106
    .local v0, "file":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] find! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->printInfoLog(Ljava/lang/String;)V

    .line 107
    return-object v0
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/CacheManager;->mBasePath:Ljava/lang/String;

    .line 84
    return-void
.end method
