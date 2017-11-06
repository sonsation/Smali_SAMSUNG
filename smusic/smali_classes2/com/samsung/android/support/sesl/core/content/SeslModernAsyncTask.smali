.class abstract Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;
.super Ljava/lang/Object;
.source "SeslModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;,
        Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$WorkerRunnable;,
        Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$InternalHandler;,
        Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static sHandler:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 59
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 68
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 74
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 83
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 129
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->PENDING:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mStatus:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$2;-><init>(Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mWorker:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$WorkerRunnable;

    .line 150
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$3;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mWorker:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$3;-><init>(Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 457
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 112
    const-class v1, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->sHandler:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$InternalHandler;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$InternalHandler;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$InternalHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->sHandler:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$InternalHandler;

    .line 116
    :cond_0
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->sHandler:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$InternalHandler;

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "exec"    # Ljava/util/concurrent/Executor;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 123
    sput-object p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 124
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 329
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mStatus:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    sget-object v1, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->PENDING:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 431
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$4;->$SwitchMap$com$samsung$android$support$sesl$core$content$SeslModernAsyncTask$Status:[I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mStatus:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 442
    :cond_0
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->RUNNING:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mStatus:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    .line 444
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->onPreExecute()V

    .line 446
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mWorker:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 449
    return-object p0

    .line 433
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 487
    :goto_0
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->FINISHED:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mStatus:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    .line 488
    return-void

    .line 485
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mStatus:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 283
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->onCancelled()V

    .line 268
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 220
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    .line 180
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;-><init>(Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 182
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-object p1
.end method

.method postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 174
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;, "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$AsyncTaskResult;-><init>(Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 479
    :cond_0
    return-void
.end method
