.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;
.super Ljava/lang/Object;
.source "MArtworkCache.java"


# static fields
.field public static final DEBUG:Z

.field public static final FULL_TAG:Ljava/lang/String; = "SMUSIC-ArtWork"

.field public static final TAG:Ljava/lang/String; = "ArtWork"

.field private static sInstance:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

.field private final mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

.field private final mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

.field private final mNegativeCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;

.field private final mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
    .param p3, "settings"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mExecutor:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    .line 71
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    iget-object v1, p3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->supportedDimensions:[I

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;-><init>([I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    .line 73
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 74
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;-><init>(JJLcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mNegativeCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;

    .line 77
    iget v0, p3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->memCacheSize:I

    if-lez v0, :cond_0

    .line 78
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    iget v1, p3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->memCacheSize:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;-><init>(ILcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    goto :goto_0
.end method

.method public static getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->sInstance:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    .prologue
    .line 85
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->sInstance:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    .line 88
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->init(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;)V

    .line 89
    const-string v0, "SMUSIC-ArtWork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Artwork cache initialized with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->clear()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mExecutor:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mExecutor:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->shutdown()V

    .line 239
    :cond_1
    return-void
.end method

.method public clearDiskCache()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mExecutor:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->cleanDiskCacheSavingQueue()V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mExecutor:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheClearRequest;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheClearRequest;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->submit(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    .line 228
    return-void
.end method

.method public getArtwork(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 211
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->getExactOrBiggest(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 213
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 215
    .local v0, "bitmapSize":I
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    if-gt v0, v2, :cond_0

    .line 220
    .end local v0    # "bitmapSize":I
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExactOrBiggestFromMemory(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->getExactOrBiggest(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoader()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    return-object v0
.end method

.method public getResizeStrategy()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    return-object v0
.end method

.method public loadArtwork(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V
    .locals 8
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p2, "publisher"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 97
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 98
    const-string v2, "ArtWork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadArtwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " publisher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    if-nez p1, :cond_1

    .line 101
    invoke-interface {p2, v5, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V

    .line 127
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mNegativeCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->get(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-interface {p2, v2, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getExactOrBiggestFromMemory(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 111
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->sendRequest(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 114
    .local v0, "bitmapSize":I
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    if-le v0, v2, :cond_5

    .line 115
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 116
    const-string v2, "ArtWork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadArtwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found in memory cache with size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resize in progress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_4
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;

    invoke-direct {v2, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/ResizeArtworkRequest;-><init>(Landroid/graphics/Bitmap;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->sendRequest(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    goto :goto_0

    .line 121
    :cond_5
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 122
    const-string v2, "ArtWork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadArtwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found in memory cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_6
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-interface {p2, v2, v1, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V

    goto/16 :goto_0
.end method

.method public publishResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;

    .prologue
    .line 143
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->mResultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->bypassNegativeCache:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mNegativeCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->put(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    .line 146
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->mResultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 148
    const-string v0, "ArtWork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->mPublisher:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->mResultBitmap:Landroid/graphics/Bitmap;

    .line 155
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->elapsedTime()J

    move-result-wide v4

    .line 154
    invoke-interface {v0, v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;->onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V

    .line 156
    return-void

    .line 150
    :cond_2
    const-string v0, "ArtWork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putToDiskCache(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 169
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "ArtWork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putToDiskCache() called with: key = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], bitmap = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    if-nez p2, :cond_1

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mExecutor:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->submit(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    goto :goto_0
.end method

.method public putToMemCache(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->putBitmap(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V

    .line 183
    :cond_0
    return-void
.end method

.method public putToMemCache(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V
    .locals 1
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p2, "result"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->putBitmapResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;)V

    .line 166
    :cond_0
    return-void
.end method

.method public removeFromDiskCache(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 2
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mExecutor:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheRemoveRequest;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheRemoveRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->submit(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    .line 187
    return-void
.end method

.method public removeFromMemCache(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 1
    .param p1, "artworkKey"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mMemoryCache:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/MemoryCache;->removeKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    .line 193
    :cond_0
    return-void
.end method

.method public sendRequest(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    .prologue
    .line 130
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "ArtWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 134
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;

    .line 135
    .local v0, "pr":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;->mPublisher:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;->onStartBackgroundRequest(Landroid/net/Uri;)V

    .line 137
    .end local v0    # "pr":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/PublishBaseArtworkRequest;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->mExecutor:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->submit(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    .line 138
    return-void
.end method
