.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFileManager;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ITEMS:Z = false

.field private static final LIFECYCLE:Ljava/lang/String; = "LifeCycle: "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "FileManager> "

.field private static volatile sFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;


# instance fields
.field private mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

.field private final mLock:Ljava/lang/Object;

.field private final mPlayingItemArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestPare:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mPlayingItemArray:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mRequestPare:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mPlayingItemArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printInfoLog(Ljava/lang/String;)V

    return-void
.end method

.method private ensureSize()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mPlayingItemArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 130
    .local v0, "size":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mRequestPare:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->maxSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mRequestPare:Landroid/util/LruCache;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->resize(I)V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increase max cache size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printInfoLog(Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->sFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->sFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->sFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->sFileManager:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hasNotActivatedFile(Landroid/util/Pair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;>;"
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->isDead()Z

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

.method private printDebugLog(Landroid/util/LruCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LruCache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "cache":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    invoke-virtual {p1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 138
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printMap(Ljava/util/Map;)V

    .line 139
    return-void
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method private printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileManager> LifeCycle: [id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "prefix":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%-50s | %-20s | %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "log":Ljava/lang/String;
    const-string v2, "SMUSIC-SV-PlayerServer"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method private printMap(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 143
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    .local v0, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  K "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " V "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printInfoLog(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v0    # "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method

.method private printMapDebug()V
    .locals 1

    .prologue
    .line 166
    const-string v0, "Print mRequestPare ----"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printInfoLog(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mRequestPare:Landroid/util/LruCache;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printDebugLog(Landroid/util/LruCache;)V

    .line 168
    const-string v0, "Print mPlayingItemArray ----"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printInfoLog(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mPlayingItemArray:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printSparseArray(Landroid/util/SparseArray;)V

    .line 170
    return-void
.end method

.method private printSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "a":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  K "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " V "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printInfoLog(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public putPlayingItem(ILjava/lang/String;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mPlayingItemArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)V
    .locals 3
    .param p1, "r"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mRequestPare:Landroid/util/LruCache;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] removed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printInfoLog(Ljava/lang/String;)V

    .line 162
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .locals 5
    .param p1, "r"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .prologue
    .line 105
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    const-string/jumbo v3, "request"

    const-string v4, "param FileRequest"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->ensureSize()V

    .line 108
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mRequestPare:Landroid/util/LruCache;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 109
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;>;"
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->hasNotActivatedFile(Landroid/util/Pair;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;->requestChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v0

    .line 111
    .local v0, "f":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    new-instance v1, Landroid/util/Pair;

    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;>;"
    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;>;"
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mRequestPare:Landroid/util/LruCache;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v0    # "f":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] requested pair.second "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printInfoLog(Ljava/lang/String;)V

    .line 115
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->active(Z)V

    .line 119
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    monitor-exit v3

    return-object v2

    .line 120
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public request(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string/jumbo v1, "request"

    const-string v2, "param id only."

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->ensureSize()V

    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mRequestPare:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 93
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;>;"
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->hasNotActivatedFile(Landroid/util/Pair;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was no request information with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;>;"
    :cond_0
    :try_start_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->active(Z)V

    .line 100
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public setFileChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;)V
    .locals 0
    .param p1, "fileChain"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->mFileChain:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    .line 80
    return-void
.end method
