.class public Lcom/android/launcher3/util/threadpool/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;,
        Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;,
        Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;,
        Lcom/android/launcher3/util/threadpool/ThreadPool$JobContextStub;,
        Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;,
        Lcom/android/launcher3/util/threadpool/ThreadPool$Job;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x4

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThreadPool"


# instance fields
.field mCpuCounter:Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 93
    invoke-direct {p0, v0, v0}, Lcom/android/launcher3/util/threadpool/ThreadPool;-><init>(II)V

    .line 94
    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "initPoolSize"    # I
    .param p2, "maxPoolSize"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool;->mCpuCounter:Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    .line 97
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/android/launcher3/util/threadpool/PriorityThreadFactory;

    const-string v0, "thread-pool"

    const/16 v2, 0xa

    invoke-direct {v8, v0, v2}, Lcom/android/launcher3/util/threadpool/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/launcher3/util/threadpool/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    .line 102
    return-void
.end method


# virtual methods
.method public submit(Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)Lcom/android/launcher3/util/threadpool/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/util/threadpool/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/launcher3/util/threadpool/FutureListener",
            "<TT;>;)",
            "Lcom/android/launcher3/util/threadpool/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "job":Lcom/android/launcher3/util/threadpool/ThreadPool$Job;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Job<TT;>;"
    .local p2, "listener":Lcom/android/launcher3/util/threadpool/FutureListener;, "Lcom/android/launcher3/util/threadpool/FutureListener<TT;>;"
    new-instance v0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;-><init>(Lcom/android/launcher3/util/threadpool/ThreadPool;Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)V

    .line 108
    .local v0, "w":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    iget-object v1, p0, Lcom/android/launcher3/util/threadpool/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-object v0
.end method

.method public submitUrgent(Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)Lcom/android/launcher3/util/threadpool/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/util/threadpool/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/launcher3/util/threadpool/FutureListener",
            "<TT;>;)",
            "Lcom/android/launcher3/util/threadpool/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "job":Lcom/android/launcher3/util/threadpool/ThreadPool$Job;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Job<TT;>;"
    .local p2, "listener":Lcom/android/launcher3/util/threadpool/FutureListener;, "Lcom/android/launcher3/util/threadpool/FutureListener<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 118
    .local v0, "excutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    .line 121
    .local v2, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    .line 122
    .local v4, "size":I
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/threadpool/ThreadPool;->submit(Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)Lcom/android/launcher3/util/threadpool/Future;

    move-result-object v3

    .line 123
    .local v3, "res":Lcom/android/launcher3/util/threadpool/Future;, "Lcom/android/launcher3/util/threadpool/Future<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 124
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;

    .line 125
    .local v5, "w":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 127
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v5    # "w":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    :cond_1
    return-object v3
.end method
