.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;
.super Ljava/lang/Object;
.source "Executor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation


# instance fields
.field private final WORKER_TAG_FULL:Ljava/lang/String;

.field private final mKeepAlive:J

.field private final mLock:Ljava/lang/Object;

.field private final mQueues:[Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mThread:Ljava/lang/Thread;


# direct methods
.method varargs constructor <init>(Ljava/lang/String;J[Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "keepAlive"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 205
    .local p4, "queues":[Ljava/util/concurrent/BlockingQueue;, "[Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mLock:Ljava/lang/Object;

    .line 206
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->WORKER_TAG_FULL:Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mThread:Ljava/lang/Thread;

    .line 208
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mQueues:[Ljava/util/concurrent/BlockingQueue;

    .line 209
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mKeepAlive:J

    .line 210
    return-void
.end method

.method private handleRequestFromQueue(Ljava/util/concurrent/BlockingQueue;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->nextRequest(Ljava/util/concurrent/BlockingQueue;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    move-result-object v1

    .line 291
    .local v1, "req":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    if-eqz v1, :cond_0

    .line 299
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->handle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->WORKER_TAG_FULL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during handling request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->mException:Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->WORKER_TAG_FULL:Ljava/lang/String;

    const-string v3, "Request allocated in: "

    iget-object v4, v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->mException:Ljava/lang/Exception;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    throw v0

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private nextRequest(Ljava/util/concurrent/BlockingQueue;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    return-object v0
.end method

.method private noRequests()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mQueues:[Ljava/util/concurrent/BlockingQueue;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 282
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 286
    .end local v0    # "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    :goto_1
    return v1

    .line 281
    .restart local v0    # "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private processRequests()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mQueues:[Ljava/util/concurrent/BlockingQueue;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 273
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->handleRequestFromQueue(Ljava/util/concurrent/BlockingQueue;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    const/4 v1, 0x1

    .line 277
    .end local v0    # "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    :cond_0
    return v1

    .line 272
    .restart local v0    # "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private waitNextRequest()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 247
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 249
    :try_start_0
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mKeepAlive:J

    .line 250
    .local v2, "timeToStop":J
    :cond_0
    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mThread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->noRequests()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    const-wide/16 v0, 0x0

    .line 257
    .local v0, "sleepStartTime":J
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 258
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    sub-long/2addr v2, v6

    .line 262
    cmp-long v4, v2, v8

    if-gtz v4, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->shutdown()V

    .line 268
    .end local v0    # "sleepStartTime":J
    :cond_1
    monitor-exit v5

    .line 269
    return-void

    .line 268
    .end local v2    # "timeToStop":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 259
    .restart local v0    # "sleepStartTime":J
    .restart local v2    # "timeToStop":J
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->WORKER_TAG_FULL:Ljava/lang/String;

    const-string/jumbo v1, "worker started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->processRequests()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->waitNextRequest()V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->WORKER_TAG_FULL:Ljava/lang/String;

    const-string/jumbo v1, "worker finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method shutdown()V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->WORKER_TAG_FULL:Ljava/lang/String;

    const-string/jumbo v2, "worker shutdown requested"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mThread:Ljava/lang/Thread;

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method wakeUp()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->WORKER_TAG_FULL:Ljava/lang/String;

    const-string/jumbo v2, "worker created"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mThread:Ljava/lang/Thread;

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 228
    monitor-exit v1

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
