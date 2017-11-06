.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;
.super Ljava/lang/Object;
.source "Executor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLocalLoadResizeQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowPriorityRequests:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueueWorkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRemoteLoadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempWorkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkers:[Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;

.field private mWorkersCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mQueueWorkers:Ljava/util/Map;

    .line 160
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mWorkersCount:I

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mTempWorkers:Ljava/util/List;

    .line 69
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLocalLoadResizeQueue:Ljava/util/concurrent/BlockingQueue;

    .line 70
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLowPriorityRequests:Ljava/util/concurrent/BlockingQueue;

    .line 71
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mRemoteLoadQueue:Ljava/util/concurrent/BlockingQueue;

    .line 81
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLocalLoadResizeQueue:Ljava/util/concurrent/BlockingQueue;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mRemoteLoadQueue:Ljava/util/concurrent/BlockingQueue;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLowPriorityRequests:Ljava/util/concurrent/BlockingQueue;

    aput-object v2, v1, v5

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->allocateWorker(ILjava/util/concurrent/TimeUnit;[Ljava/util/concurrent/BlockingQueue;)V

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-array v1, v5, [Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLocalLoadResizeQueue:Ljava/util/concurrent/BlockingQueue;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mRemoteLoadQueue:Ljava/util/concurrent/BlockingQueue;

    aput-object v2, v1, v3

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->allocateWorker(ILjava/util/concurrent/TimeUnit;[Ljava/util/concurrent/BlockingQueue;)V

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-array v1, v3, [Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLocalLoadResizeQueue:Ljava/util/concurrent/BlockingQueue;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->allocateWorker(ILjava/util/concurrent/TimeUnit;[Ljava/util/concurrent/BlockingQueue;)V

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-array v1, v3, [Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mRemoteLoadQueue:Ljava/util/concurrent/BlockingQueue;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->allocateWorker(ILjava/util/concurrent/TimeUnit;[Ljava/util/concurrent/BlockingQueue;)V

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-array v1, v3, [Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mRemoteLoadQueue:Ljava/util/concurrent/BlockingQueue;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->allocateWorker(ILjava/util/concurrent/TimeUnit;[Ljava/util/concurrent/BlockingQueue;)V

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-array v1, v3, [Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mRemoteLoadQueue:Ljava/util/concurrent/BlockingQueue;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->allocateWorker(ILjava/util/concurrent/TimeUnit;[Ljava/util/concurrent/BlockingQueue;)V

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->finishWorkersAllocation()V

    .line 91
    return-void
.end method

.method private final varargs allocateWorker(ILjava/util/concurrent/TimeUnit;[Ljava/util/concurrent/BlockingQueue;)V
    .locals 8
    .param p1, "ttl"    # I
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            "[",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 168
    .local p3, "queues":[Ljava/util/concurrent/BlockingQueue;, "[Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mWorkersCount:I

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->getWorkerName(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, p1

    invoke-virtual {p2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-direct {v2, v4, v6, v7, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;-><init>(Ljava/lang/String;J[Ljava/util/concurrent/BlockingQueue;)V

    .line 169
    .local v2, "worker":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;
    array-length v5, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, p3, v4

    .line 170
    .local v1, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mQueueWorkers:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 171
    .local v3, "workers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;>;"
    if-nez v3, :cond_0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mQueueWorkers:Ljava/util/Map;

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    .end local v1    # "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    .end local v3    # "workers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;>;"
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mTempWorkers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mWorkersCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mWorkersCount:I

    .line 181
    return-void
.end method

.method private cleanQueueFromDiskCacheRequests(Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 133
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    .line 135
    .local v0, "cur":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    instance-of v2, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;

    if-eqz v2, :cond_0

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 139
    .end local v0    # "cur":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    :cond_1
    return-void
.end method

.method private finishWorkersAllocation()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mTempWorkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mWorkers:[Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mTempWorkers:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mWorkers:[Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 186
    return-void
.end method

.method private getWorkerName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-ArtworkWorker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLowPriorityRequest(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)Z
    .locals 1
    .param p1, "req"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    .prologue
    .line 121
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBitmapSaveRequest;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendToQueue(Ljava/util/concurrent/BlockingQueue;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V
    .locals 3
    .param p2, "req"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;>;"
    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 143
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mQueueWorkers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;

    .line 144
    .local v0, "w":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    .end local v0    # "w":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;
    :cond_0
    return-void

    .line 147
    .restart local v0    # "w":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->wakeUp()V

    goto :goto_0
.end method


# virtual methods
.method public cleanDiskCacheSavingQueue()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLowPriorityRequests:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->cleanQueueFromDiskCacheRequests(Ljava/util/concurrent/BlockingQueue;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLocalLoadResizeQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->cleanQueueFromDiskCacheRequests(Ljava/util/concurrent/BlockingQueue;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mRemoteLoadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->cleanQueueFromDiskCacheRequests(Ljava/util/concurrent/BlockingQueue;)V

    .line 129
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 152
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mWorkers:[Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 153
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;->shutdown()V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor$Worker;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLocalLoadResizeQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLowPriorityRequests:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 157
    return-void
.end method

.method public submit(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V
    .locals 1
    .param p1, "req"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->isLowPriorityRequest(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLowPriorityRequests:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->sendToQueue(Ljava/util/concurrent/BlockingQueue;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    .line 118
    :goto_0
    return-void

    .line 100
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/LoadArtworkRequest;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->key:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->isRemote()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mRemoteLoadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->sendToQueue(Ljava/util/concurrent/BlockingQueue;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLocalLoadResizeQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->sendToQueue(Ljava/util/concurrent/BlockingQueue;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->mLocalLoadResizeQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/Executor;->sendToQueue(Ljava/util/concurrent/BlockingQueue;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    goto :goto_0
.end method
