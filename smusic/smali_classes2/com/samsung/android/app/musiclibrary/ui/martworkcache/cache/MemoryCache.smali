.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheLock:Ljava/lang/Object;

.field private final mMemoryProvider:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;


# direct methods
.method public constructor <init>(ILcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;)V
    .locals 1
    .param p1, "memCacheSize"    # I
    .param p2, "resizeStrategy"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mCacheLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mMemoryProvider:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    .line 59
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mCache:Landroid/util/LruCache;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mCache:Landroid/util/LruCache;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExactOrBiggest(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mMemoryProvider:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putBitmap(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->unknownMaxSizeResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mMemoryProvider:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;

    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->putResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putBitmapResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V
    .locals 3
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p2, "result"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mMemoryProvider:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;

    invoke-virtual {v0, p1, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->putResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 2
    .param p1, "artworkKey"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
