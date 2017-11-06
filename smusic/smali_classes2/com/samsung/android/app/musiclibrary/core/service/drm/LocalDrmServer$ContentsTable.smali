.class final Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;
.super Ljava/lang/Object;
.source "LocalDrmServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentsTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;
    }
.end annotation


# static fields
.field static final NEGATIVE_TTL:I = 0x3e8

.field static final NO_CACHING_ERROR_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDebugTracer:Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;

.field private final mFileNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, -0x65

    .line 229
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    .line 232
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v1, -0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v1, -0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v1, -0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v1, -0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v1, -0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v1, -0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)V
    .locals 2
    .param p1, "server"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;

    const-string v1, "(DRM-L)"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mDebugTracer:Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;

    .line 247
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mFileNameMap:Landroid/util/SparseArray;

    .line 249
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mContentCache:Landroid/util/LruCache;

    .line 263
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    .line 264
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mFileNameMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;)Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    return-object v0
.end method

.method private isTTL(J)Z
    .locals 5
    .param p1, "baseTime"    # J

    .prologue
    .line 343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private trace()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mDebugTracer:Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->trace()V

    .line 340
    return-void
.end method


# virtual methods
.method close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 3
    .param p1, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mFileNameMap:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not opened or Already closed content!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mContentCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method closeAll()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mContentCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 332
    return-void
.end method

.method get(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 276
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mContentCache:Landroid/util/LruCache;

    invoke-virtual {v7, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;

    .line 277
    .local v0, "cachedOne":Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;
    if-nez v0, :cond_1

    move-object v1, v6

    .line 310
    :cond_0
    :goto_0
    return-object v1

    .line 281
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;->content:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .line 282
    .local v1, "content":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result v4

    .line 283
    .local v4, "fd":I
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v3

    .line 287
    .local v3, "error":I
    if-lez v4, :cond_2

    :try_start_0
    sget v7, Landroid/system/OsConstants;->F_OK:I

    invoke-static {p1, v7}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 288
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 289
    goto :goto_0

    .line 291
    :catch_0
    move-exception v2

    .line 292
    .local v2, "e":Landroid/system/ErrnoException;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "File check error"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_2
    iget-wide v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;->time:J

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->isTTL(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 299
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 300
    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    move-object v1, v6

    .line 301
    goto :goto_0

    .line 304
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "sdCardPrefix":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 306
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sd card path file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    move-object v1, v6

    .line 308
    goto :goto_0
.end method

.method put(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .prologue
    .line 267
    if-nez p2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mFileNameMap:Landroid/util/SparseArray;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mContentCache:Landroid/util/LruCache;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;->obtain(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->trace()V

    goto :goto_0
.end method
