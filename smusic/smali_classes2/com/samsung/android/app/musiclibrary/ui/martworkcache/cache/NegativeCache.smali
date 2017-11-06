.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;
.super Ljava/lang/Object;
.source "NegativeCache.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ArtWork"


# instance fields
.field private final mLocalTTL:J

.field private final mNegative:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteTTL:J

.field private final mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(JJLcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;)V
    .locals 1
    .param p1, "localTTL"    # J
    .param p3, "remoteTTL"    # J
    .param p5, "resizeStrategy"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->mNegative:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->mLocalTTL:J

    .line 47
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->mRemoteTTL:J

    .line 48
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    .line 49
    return-void
.end method

.method private getSearchKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .locals 1
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->isRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->isMultiResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    .end local p1    # "key":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    :goto_0
    return-object p1

    .restart local p1    # "key":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->mResizeStrategy:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getBiggestSize()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->copyOtherSize(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public get(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Z
    .locals 7
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->getSearchKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v2

    .line 72
    .local v2, "searchKey":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->mNegative:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 73
    .local v3, "time":Ljava/lang/Long;
    if-eqz v3, :cond_3

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 75
    .local v0, "now":J
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 76
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 77
    const-string v4, "ArtWork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is in negative cache ttl NOT EXPIRED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    const/4 v4, 0x1

    .line 87
    .end local v0    # "now":J
    :goto_0
    return v4

    .line 81
    .restart local v0    # "now":J
    :cond_1
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 82
    const-string v4, "ArtWork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is in negative cache ttl EXPIRED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->mNegative:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v0    # "now":J
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public put(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 6
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->isRemote()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->mRemoteTTL:J

    .line 58
    .local v0, "ttl":J
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->mNegative:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->getSearchKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void

    .line 56
    .end local v0    # "ttl":J
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/NegativeCache;->mLocalTTL:J

    .restart local v0    # "ttl":J
    goto :goto_0
.end method
