.class Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;
.super Ljava/lang/Object;
.source "BlurBackgroundController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/util/BlurBackgroundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final MSG_RELEASE_CLIENT:I = 0xcb


# instance fields
.field private final mBlurCallback:Landroid/os/Handler$Callback;

.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheLock:Ljava/lang/Object;

.field private final mClient:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mLoadingHandler:Landroid/os/Handler;

.field private volatile mThread:Landroid/os/HandlerThread;

.field private final mThreadLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mCache:Landroid/util/LruCache;

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mCacheLock:Ljava/lang/Object;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mThreadLock:Ljava/lang/Object;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mClient:Ljava/util/concurrent/atomic/AtomicReference;

    .line 229
    new-instance v0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader$1;-><init>(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mBlurCallback:Landroid/os/Handler$Callback;

    .line 304
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mContext:Landroid/content/Context;

    .line 305
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->putToCache(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mClient:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private putToCache(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "req"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;
    .param p2, "blurredBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 314
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method getCachedBitmap(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "req"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$BlurRequest;

    .prologue
    .line 308
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit v1

    return-object v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 5

    .prologue
    .line 321
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 322
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 323
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BlurBackgroundController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 325
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mBlurCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mLoadingHandler:Landroid/os/Handler;

    .line 326
    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mThread:Landroid/os/HandlerThread;

    .line 327
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mLoadingHandler:Landroid/os/Handler;

    return-object v1

    .line 327
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method releaseClient(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;)V
    .locals 3
    .param p1, "client"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 338
    .local v0, "handler":Landroid/os/Handler;
    const/16 v2, 0xcb

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 339
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 340
    return-void
.end method

.method setClient(Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;)V
    .locals 1
    .param p1, "client"    # Lcom/samsung/android/app/music/common/util/BlurBackgroundController$LoaderClient;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/BlurBackgroundController$Loader;->mClient:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 334
    return-void
.end method
