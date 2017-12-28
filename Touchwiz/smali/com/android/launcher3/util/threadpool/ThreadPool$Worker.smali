.class Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/launcher3/util/threadpool/Future;
.implements Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/threadpool/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/android/launcher3/util/threadpool/Future",
        "<TT;>;",
        "Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mCancelListener:Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcom/android/launcher3/util/threadpool/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/threadpool/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/launcher3/util/threadpool/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/threadpool/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/android/launcher3/util/threadpool/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/threadpool/ThreadPool;Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/threadpool/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/launcher3/util/threadpool/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    .local p2, "job":Lcom/android/launcher3/util/threadpool/ThreadPool$Job;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Job<TT;>;"
    .local p3, "listener":Lcom/android/launcher3/util/threadpool/FutureListener;, "Lcom/android/launcher3/util/threadpool/FutureListener<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;-><init>(Lcom/android/launcher3/util/threadpool/ThreadPool;Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;Z)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/threadpool/ThreadPool;Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;Z)V
    .locals 0
    .param p4, "networkPool"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/threadpool/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/launcher3/util/threadpool/FutureListener",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    .local p2, "job":Lcom/android/launcher3/util/threadpool/ThreadPool$Job;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Job<TT;>;"
    .local p3, "listener":Lcom/android/launcher3/util/threadpool/FutureListener;, "Lcom/android/launcher3/util/threadpool/FutureListener<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->this$0:Lcom/android/launcher3/util/threadpool/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p2, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mJob:Lcom/android/launcher3/util/threadpool/ThreadPool$Job;

    .line 170
    iput-object p3, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mListener:Lcom/android/launcher3/util/threadpool/FutureListener;

    .line 171
    return-void
.end method

.method private acquireResource(Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;)Z
    .locals 1
    .param p1, "counter"    # Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    .prologue
    .line 287
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    :goto_0
    monitor-enter p0

    .line 288
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    .line 290
    const/4 v0, 0x0

    monitor-exit p0

    .line 313
    :goto_1
    return v0

    .line 292
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    .line 293
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-enter p1

    .line 296
    :try_start_1
    iget v0, p1, Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    .line 297
    iget v0, p1, Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;->value:I

    .line 298
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    monitor-enter p0

    .line 310
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    .line 311
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 313
    const/4 v0, 0x1

    goto :goto_1

    .line 293
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 301
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 306
    :goto_2
    :try_start_5
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 311
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 302
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private modeToCounter(I)Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 278
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->this$0:Lcom/android/launcher3/util/threadpool/ThreadPool;

    iget-object v0, v0, Lcom/android/launcher3/util/threadpool/ThreadPool;->mCpuCounter:Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    .line 281
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseResource(Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;)V
    .locals 1
    .param p1, "counter"    # Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    .prologue
    .line 317
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p1

    .line 318
    :try_start_0
    iget v0, p1, Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;->value:I

    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 320
    monitor-exit p1

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 203
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 204
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mIsCancelled:Z

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_2

    .line 206
    iget-object v1, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :try_start_2
    iget-object v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mWaitOnResource:Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 208
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 229
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ingore exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 227
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 235
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 274
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    iget v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mMode:I

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 222
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    const/4 v2, 0x1

    .line 176
    const/4 v1, 0x0

    .line 180
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->setMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mJob:Lcom/android/launcher3/util/threadpool/ThreadPool$Job;

    invoke-interface {v2, p0}, Lcom/android/launcher3/util/threadpool/ThreadPool$Job;->run(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 191
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    monitor-enter p0

    .line 192
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->setMode(I)Z

    .line 193
    iput-object v1, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    .line 194
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mIsDone:Z

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 196
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    iget-object v2, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mListener:Lcom/android/launcher3/util/threadpool/FutureListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mListener:Lcom/android/launcher3/util/threadpool/FutureListener;

    invoke-interface {v2, p0}, Lcom/android/launcher3/util/threadpool/FutureListener;->onFutureDone(Lcom/android/launcher3/util/threadpool/Future;)V

    .line 198
    :cond_1
    return-void

    .line 183
    .restart local v1    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 185
    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 186
    .end local v0    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public declared-synchronized setCancelListener(Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;

    .prologue
    .line 247
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;

    .line 248
    iget-boolean v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mCancelListener:Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_0
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    const/4 v1, 0x0

    .line 256
    iget v2, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->modeToCounter(I)Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 257
    .local v0, "rc":Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->releaseResource(Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;)V

    .line 258
    :cond_0
    iput v1, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mMode:I

    .line 261
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->modeToCounter(I)Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_2

    .line 263
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->acquireResource(Lcom/android/launcher3/util/threadpool/ThreadPool$ResourceCounter;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    :goto_0
    return v1

    .line 266
    :cond_1
    iput p1, p0, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->mMode:I

    .line 269
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public waitDone()V
    .locals 0

    .prologue
    .line 240
    .local p0, "this":Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;, "Lcom/android/launcher3/util/threadpool/ThreadPool$Worker<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/util/threadpool/ThreadPool$Worker;->get()Ljava/lang/Object;

    .line 241
    return-void
.end method
