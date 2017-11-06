.class public abstract Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;
.super Lcom/samsung/android/support/sesl/core/content/SeslLoader;
.source "SeslAsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
        "<TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "SeslAsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 127
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 130
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;-><init>(Landroid/content/Context;)V

    .line 122
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 131
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 132
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    .prologue
    .line 315
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    return-void
.end method

.method dispatchOnCancelled(Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    .local p1, "task":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mCancellingTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    if-ne v0, p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->rollbackContentChanged()V

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mCancellingTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->deliverCancellation()V

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->executePendingTask()V

    .line 238
    :cond_0
    return-void
.end method

.method dispatchOnLoadComplete(Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    .local p1, "task":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    if-eq v0, p1, :cond_0

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->dispatchOnCancelled(Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    .line 256
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->isAbandoned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->commitContentChanged()V

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    .line 253
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 348
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 351
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mCancellingTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mCancellingTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 355
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mCancellingTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 357
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mUpdateThrottle:J

    invoke-static {v0, v1, p3}, Lcom/samsung/android/support/sesl/core/util/SeslTimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 360
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 361
    invoke-static {v0, v1, v2, v3, p3}, Lcom/samsung/android/support/sesl/core/util/SeslTimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 363
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 365
    :cond_2
    return-void
.end method

.method executePendingTask()V
    .locals 8

    .prologue
    .line 205
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mCancellingTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    iget-boolean v2, v2, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->waiting:Z

    .line 208
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 212
    .local v0, "now":J
    iget-wide v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->waiting:Z

    .line 218
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    iget-wide v4, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v6, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 225
    .end local v0    # "now":J
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;

    goto :goto_0
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 1

    .prologue
    .line 325
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mCancellingTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected onCancelLoad()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mCancellingTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->waiting:Z

    .line 168
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    :cond_0
    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    .line 191
    :cond_1
    :goto_0
    return v0

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->waiting:Z

    .line 177
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    goto :goto_0

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->cancel(Z)Z

    move-result v0

    .line 183
    .local v0, "cancelled":Z
    if-eqz v0, :cond_4

    .line 184
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mCancellingTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->cancelLoadInBackground()V

    .line 187
    :cond_4
    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    goto :goto_0
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onForceLoad()V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->cancelLoad()Z

    .line 152
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;-><init>(Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->executePendingTask()V

    .line 155
    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 3
    .param p1, "delayMS"    # J

    .prologue
    .line 142
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    iput-wide p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mUpdateThrottle:J

    .line 143
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 146
    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->mTask:Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;

    .line 341
    .local v0, "task":Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;, "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader<TD;>.LoadTask;"
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader$LoadTask;->waitForLoader()V

    .line 344
    :cond_0
    return-void
.end method
